#!/bin/sh

SCRIPT_LOCATION=$(cd "$(dirname "$0")"; pwd)
PLIST_LOCATION=$1
NEW_BUNDLE_IDENTIFIER=$2

export
ls -l "$PLIST_LOCATION"
ls -l "/Users/Shared/Jenkins/Home/jobs/SNAP CHROMECAST/workspace/"
ls -l "/Users/Shared/Jenkins/Home/jobs/"
ls -l "/Users/Shared/Jenkins/Home/jobs/SNAP CHROMECAST/workspace/./PRISM/PRISM"
echo "OLD BUNDLE IDENTIFIER=$(/usr/libexec/PlistBuddy -c "Print CFBundleIdentifier" "$PLIST_LOCATION")"
echo "NEW BUNDLE IDENTIFIER= $NEW_BUNDLE_IDENTIFIER"

echo "Write NEW BUNDLE IDENTIFIER into PLIST now"
/usr/libexec/PlistBuddy -c "Set :CFBundleIdentifier $NEW_BUNDLE_IDENTIFIER" "$PLIST_LOCATION"