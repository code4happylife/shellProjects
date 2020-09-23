#!/usr/bin/env bash

#
# Capture_Stats - Gather System Performance Statistics
#
#########################################################
#
# Set Script Variables
#
REPORT_FILE=./capstats.csv
DATE=`date +%Y/%m/%d`
TIME=`date +%H:%M:%S`
#
############################################################
#
#uptime gives the info of time, running time, number of users logged in and load of past 1 min, 5 min, 15 min
USERS=`uptime | sed 's/user.*$//' | gawk '{print $NF}'`
LOAD=`uptime | gawk '{print $NF}'`
# the gawk is GNU Awk.

#
# FREE is free memory
FREE=`vmstat 1 2 | sed -n '/[0-9]/p' | sed -n '2p' | gawk '{print $4}'`
# IDLE is idle cpu
IDLE=`vmstat 1 2 | sed -n '/[0-9]/p' | sed -n '2p' | gawk '{print $15}'`
#
##########################################
#
echo "DATE, TIME, USERS, LOAD, FREE, IDLE"  >  $REPORT_FILE
echo "$DATE,$TIME,$USERS,$LOAD,$FREE,$IDLE" >> $REPORT_FILE
#

 << COMMENT
awk --version
GNU Awk 4.0.2
Copyright (C) 1989, 1991-2012 Free Software Foundation.

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program. If not, see http://www.gnu.org/licenses/.

For vmstat
Procs
    r: The number of processes waiting for run time.
    b: The number of processes in uninterruptible sleep.
Memory
    swpd: the amount of virtual memory used.
    free: the amount of idle memory.
    buff: the amount of memory used as buffers.
    cache: the amount of memory used as cache.
    inact: the amount of inactive memory. (-a option)
    active: the amount of active memory. (-a option)
Swap
    si: Amount of memory swapped in from disk (/s).
    so: Amount of memory swapped to disk (/s).
IO
    bi: Blocks received from a block device (blocks/s).
    bo: Blocks sent to a block device (blocks/s).
System
    in: The number of interrupts per second, including the clock.
    cs: The number of context switches per second.
CPU
    These are percentages of total CPU time.
    us: Time spent running non-kernel code. (user time, including nice time)
    sy: Time spent running kernel code. (system time)
    id: Time spent idle. Prior to Linux 2.5.41, this includes IO-wait time.
    wa: Time spent waiting for IO. Prior to Linux 2.5.41, included in idle.
    st: Time stolen from a virtual machine. Prior to Linux 2.6.11, unknown.


COMMENT
