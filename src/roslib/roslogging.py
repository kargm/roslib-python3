# Software License Agreement (BSD License)
#
# Copyright (c) 2008, Willow Garage, Inc.
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met:
#
#  * Redistributions of source code must retain the above copyright
#    notice, this list of conditions and the following disclaimer.
#  * Redistributions in binary form must reproduce the above
#    copyright notice, this list of conditions and the following
#    disclaimer in the documentation and/or other materials provided
#    with the distribution.
#  * Neither the name of Willow Garage, Inc. nor the names of its
#    contributors may be used to endorse or promote products derived
#    from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
# "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
# LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
# FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
# COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
# INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
# BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
# CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
# LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
# ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.
#
# Revision $Id: roslogging.py 9637 2010-05-10 20:25:51Z kwc $
# $Author: kwc $

"""
Library for configuring python logging to standard ROS locations (e.g. ROS_LOG_DIR).
"""

import os
import sys
import logging

import roslib.rosenv
from roslib.rosenv import get_ros_root, ROS_LOG_DIR, ROS_HOME, makedirs_with_parent_perms
import roslib.exceptions

get_log_dir = roslib.rosenv.get_log_dir
    
def configure_logging(logname, level=logging.INFO, filename=None, additional=None, env=None):
    """
    Configure Python logging package to send log files to ROS-specific log directory
    @param logname str: name of logger
    @type  logname: str
    @param filename: filename to log to. If not set, a log filename
        will be generated using logname
    @type filename: str
    @param additional: additional log names to attach to same log handler
    @type  additional: [str]
    @param env: override os.environ dictionary
    @type  env: dict
    @return: log file name
    @rtype: str
    @raise roslib.exceptions.ROSLibException: if logging cannot be configured as specified
    """
    if env is None:
        env = os.environ

    import logging.handlers
    
    logname = logname or 'unknown'
    log_dir = get_log_dir(env=env)
    
    # if filename is not explicitly provided, generate one using logname
    if not filename:
        log_filename = os.path.join(log_dir, '%s-%s.log'%(logname, os.getpid()))
    else:
        log_filename = os.path.join(log_dir, filename)

    logfile_dir = os.path.dirname(log_filename)
    if not os.path.exists(logfile_dir):
        try:
            makedirs_with_parent_perms(logfile_dir)
        except OSError:
            # cannot print to screen because command-line tools with output use this
            sys.stderr.write("WARNING: cannot create log directory [%s]. Please set %s to a writable location.\n"%(logfile_dir, ROS_LOG_DIR))
            return None
    elif os.path.isfile(logfile_dir):
        raise roslib.exceptions.ROSLibException("Cannot save log files: file [%s] is in the way"%logfile_dir)

    handler = logging.handlers.RotatingFileHandler(
        log_filename, maxBytes=100000000, backupCount=10)
    formatter = logging.Formatter("[%(levelname)s] %(asctime)s: %(message)s")
    handler.setFormatter(formatter)
    additional = additional or []
    for n in [logname] + additional:
        logger = logging.getLogger(n)
        logger.setLevel(level)
        logger.addHandler(handler)
    return log_filename

