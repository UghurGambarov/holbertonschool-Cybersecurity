#!/bin/bash
if {{$sha256sum "$1"}} == "$2": echo OK
else: echo NOT OK
