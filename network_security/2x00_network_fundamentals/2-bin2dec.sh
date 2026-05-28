#!/bin/bash
printf "$(echo "ibase=2;$1" | bc)"
