#!/bin/bash
tr -dc < /dev/urandom | head < "$1"
echo
