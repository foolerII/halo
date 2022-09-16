#!/bin/sh

current="$(dirname "$0")"
loader_path=/c/Users/ZQ091606/Documents/PROGRAM/GitHub/halo/src/main/resources/
jar=build/libs/halo-1.5.3-SNAPSHOT.jar
java \
  -agentlib:jdwp=transport=dt_socket,server=n,address=ZQ091606:5005,suspend=y \
    -Dloader.path="$loader_path" \
    -jar "$jar" \
    --spring.profiles.active=dudu

#    -Dloader.config.location="$loader_path" \
#    --server.port="$server_port" \
