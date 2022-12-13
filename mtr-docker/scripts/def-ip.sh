#!/bin/bash
export DEF_IP=$(bash -c 'ip a show dev $(ip -o -4 r show default|grep -m1 -oP "(?<=dev )[^ ]+")|grep -m1 -oP "(?<=inet )[^/]+"')
echo $DEF_IP
