#!/bin/sh

SCRIPT_LOCATION=$(cd "$(dirname "$0")"; pwd)
PLIST_LOCATION=$1
NEW_APP_ICON_NAME=$2

APP_ICON_PREFIX="${NEW_APP_ICON_NAME%%.*}"
APP_ICON_SUFFIX="png"


/usr/libexec/PlistBuddy -c "Delete :CFBundleIcons" "$PLIST_LOCATION"
/usr/libexec/PlistBuddy -c "Add :CFBundleIcons:CFBundlePrimaryIcon:CFBundleIconFiles array" "$PLIST_LOCATION"
/usr/libexec/PlistBuddy -c "Add :CFBundleIcons:CFBundlePrimaryIcon:'CFBundleIconFiles':0 string $APP_ICON_PREFIX-settings-29.$APP_ICON_SUFFIX" "$PLIST_LOCATION"
/usr/libexec/PlistBuddy -c "Add :CFBundleIcons:CFBundlePrimaryIcon:'CFBundleIconFiles':1 string $APP_ICON_PREFIX-settings-29@2x.$APP_ICON_SUFFIX" "$PLIST_LOCATION"
/usr/libexec/PlistBuddy -c "Add :CFBundleIcons:CFBundlePrimaryIcon:'CFBundleIconFiles':2 string $APP_ICON_PREFIX-spotlight-40.$APP_ICON_SUFFIX" "$PLIST_LOCATION"
/usr/libexec/PlistBuddy -c "Add :CFBundleIcons:CFBundlePrimaryIcon:'CFBundleIconFiles':3 string $APP_ICON_PREFIX-spotlight-40@2x.$APP_ICON_SUFFIX" "$PLIST_LOCATION"
/usr/libexec/PlistBuddy -c "Add :CFBundleIcons:CFBundlePrimaryIcon:'CFBundleIconFiles':4 string $APP_ICON_PREFIX-iphone-57.$APP_ICON_SUFFIX" "$PLIST_LOCATION"
/usr/libexec/PlistBuddy -c "Add :CFBundleIcons:CFBundlePrimaryIcon:'CFBundleIconFiles':5 string $APP_ICON_PREFIX-iphone-57@2x.$APP_ICON_SUFFIX" "$PLIST_LOCATION"
/usr/libexec/PlistBuddy -c "Add :CFBundleIcons:CFBundlePrimaryIcon:'CFBundleIconFiles':6 string $APP_ICON_PREFIX-iphone-60.$APP_ICON_SUFFIX" "$PLIST_LOCATION"
/usr/libexec/PlistBuddy -c "Add :CFBundleIcons:CFBundlePrimaryIcon:'CFBundleIconFiles':7 string $APP_ICON_PREFIX-iphone-60@2x.$APP_ICON_SUFFIX" "$PLIST_LOCATION"


/usr/libexec/PlistBuddy -c "Delete :CFBundleIcons~ipad" "$PLIST_LOCATION"
/usr/libexec/PlistBuddy -c "Add :CFBundleIcons~ipad:CFBundlePrimaryIcon:CFBundleIconFiles array" "$PLIST_LOCATION"
/usr/libexec/PlistBuddy -c "Add :CFBundleIcons~ipad:CFBundlePrimaryIcon:'CFBundleIconFiles':0 string $APP_ICON_PREFIX-settings-29.$APP_ICON_SUFFIX" "$PLIST_LOCATION"
/usr/libexec/PlistBuddy -c "Add :CFBundleIcons~ipad:CFBundlePrimaryIcon:'CFBundleIconFiles':1 string $APP_ICON_PREFIX-settings-29@2x.$APP_ICON_SUFFIX" "$PLIST_LOCATION"
/usr/libexec/PlistBuddy -c "Add :CFBundleIcons~ipad:CFBundlePrimaryIcon:'CFBundleIconFiles':2 string $APP_ICON_PREFIX-spotlight-40.$APP_ICON_SUFFIX" "$PLIST_LOCATION"
/usr/libexec/PlistBuddy -c "Add :CFBundleIcons~ipad:CFBundlePrimaryIcon:'CFBundleIconFiles':3 string $APP_ICON_PREFIX-spotlight-40@2x.$APP_ICON_SUFFIX" "$PLIST_LOCATION"
/usr/libexec/PlistBuddy -c "Add :CFBundleIcons~ipad:CFBundlePrimaryIcon:'CFBundleIconFiles':4 string $APP_ICON_PREFIX-spotlight-50.$APP_ICON_SUFFIX" "$PLIST_LOCATION"
/usr/libexec/PlistBuddy -c "Add :CFBundleIcons~ipad:CFBundlePrimaryIcon:'CFBundleIconFiles':5 string $APP_ICON_PREFIX-spotlight-50@2x.$APP_ICON_SUFFIX" "$PLIST_LOCATION"
/usr/libexec/PlistBuddy -c "Add :CFBundleIcons~ipad:CFBundlePrimaryIcon:'CFBundleIconFiles':6 string $APP_ICON_PREFIX-ipad-72.$APP_ICON_SUFFIX" "$PLIST_LOCATION"
/usr/libexec/PlistBuddy -c "Add :CFBundleIcons~ipad:CFBundlePrimaryIcon:'CFBundleIconFiles':7 string $APP_ICON_PREFIX-ipad-72@2x.$APP_ICON_SUFFIX" "$PLIST_LOCATION"
/usr/libexec/PlistBuddy -c "Add :CFBundleIcons~ipad:CFBundlePrimaryIcon:'CFBundleIconFiles':8 string $APP_ICON_PREFIX-ipad-76.$APP_ICON_SUFFIX" "$PLIST_LOCATION"
/usr/libexec/PlistBuddy -c "Add :CFBundleIcons~ipad:CFBundlePrimaryIcon:'CFBundleIconFiles':9 string $APP_ICON_PREFIX-ipad-76@2x.$APP_ICON_SUFFIX" "$PLIST_LOCATION"
