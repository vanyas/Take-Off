#!/bin/bash

# Increment the build number with every build.
BUILDNUM=$(/usr/libexec/PlistBuddy -c "Print CFBundleVersion" "${INFOPLIST_FILE}")

[[ $BUILDNUM =~ ([^.]+).([^.]+).([^.]+) ]]

NEW_BUILD_NUMBER=${BASH_REMATCH[1]}.${BASH_REMATCH[2]}.$((${BASH_REMATCH[3]}+1))


/usr/libexec/PlistBuddy -c "Set :CFBundleVersion $NEW_BUILD_NUMBER" "${INFOPLIST_FILE}"


#crear commit
MESSAGE="Archive Build: $BUILDNUM"
echo "*--- "$MESSAGE" ----*"
echo ${INFOPLIST_FILE}
git add .
git commit -m "$MESSAGE"
   