#!/bin/bash
ps -u "$1" -o user,pid,pcpu,pmem,vsz,rss,tty,stat,time,cmd | grep -v " 0  *0 "
