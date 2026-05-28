#!/bin/bash
printf "$(echo "obase=10;$1 | bc")"
