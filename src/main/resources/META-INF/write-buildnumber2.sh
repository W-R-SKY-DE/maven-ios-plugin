#!/bin/sh

SCRIPT_LOCATION=$(cd "$(dirname "$0")"; pwd)
PLIST_LOCATION=$1
PB_NEW_BUILD_NUMBER=$2
PB_KEY=$3

echo "NEW set $PB_KEY $PB_NEW_BUILD_NUMBER" "$PLIST_LOCATION"

echo "Write /usr/libexec/PlistBuddy -c Set $PB_KEY $PB_NEW_BUILD_NUMBER $PLIST_LOCATION"
/usr/libexec/PlistBuddy -c "set $PB_KEY $PB_NEW_BUILD_NUMBER" "$PLIST_LOCATION"