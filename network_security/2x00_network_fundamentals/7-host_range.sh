#!/bin/bash
ip=$1; cidr=$2; IFS=. read a b c d <<< "$ip"; m=$((0xFFFFFFFF<< (32-cidr)&0xFFFFFFFF)); n=$(((a<<24)+(b<<16)+(c<<8)+d & m)); bcast=$((n|(m^0xFFFFFFFF))); printf "%d.%d.%d.%d - %d.%d.%d.%d\n" $(((n+1)>>24&255)) $(((n+1)>>16&255)) $(((n+1)>>8&255)) $(((n+1)&255)) $(((bcast-1)>>24&255)) $(((bcast-1)>>16&255)) $(((bcast-1)>>8&255)) $(((bcast-1)&255))
