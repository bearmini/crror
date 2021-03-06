#!/bin/bash

# emulate GNU readlink's "readlink -f" behavior on Mac
# http://stackoverflow.com/questions/1055671/how-can-i-get-the-behavior-of-gnus-readlink-f-on-a-mac
function __readlink_f {
  TARGET_FILE=$1

  while [ "$TARGET_FILE" != "" ]; do
    cd `dirname $TARGET_FILE`
    FILENAME=`basename $TARGET_FILE`
    TARGET_FILE=`readlink $FILENAME`
  done

  echo `pwd -P`/$FILENAME
}

self=`__readlink_f $0`

d=$( cd $( dirname "$self" ); pwd )
cwd=`pwd`

cd $d
go fmt
go get -d
go build -o crror.bin
cd $cwd
