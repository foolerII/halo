#!/bin/sh

current="$(dirname "$0")"
cd "$current"
loader_path="../../out/aa/,../../out/aa/adm/"
jar=../../build/libs/halo-1.5.4.jar
java \
    -Dloader.path="$loader_path" \
    -jar "$jar" \
    --spring.profiles.active=dudu

#  -agentlib:jdwp=transport=dt_socket,server=n,address=ZQ091606:5005,suspend=y \
#    -Dloader.config.location="$loader_path" \
#    --server.port="$server_port" \
