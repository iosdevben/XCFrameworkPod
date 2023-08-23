#!/bin/bash -ex

frameworkName=XCFrameworkPod
archivePath=archives
deviceArchivePath=$archivePath/ios.xcarchive
simulatorArchivePath=$archivePath/ios_simulator.xcarchive

otherVariables="SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=YES"

frameworkPath=Products/Library/Frameworks/$frameworkName.framework

deviceFrameworkPath=$deviceArchivePath/$frameworkPath
simulatorFrameworkPath=$simulatorArchivePath/$frameworkPath

xcframeworkPath=$frameworkName.xcframework

# Remove any old files
rm -rf $archivePath
rm -rf $xcframeworkPath

# Build the archive for simulator
xcodebuild archive \
  -scheme $frameworkName \
  -destination "generic/platform=iOS Simulator" \
  -archivePath $simulatorArchivePath \
  $otherVariables

# Build the archive for device
xcodebuild archive \
  -scheme $frameworkName \
  -destination "generic/platform=iOS" \
  -archivePath $deviceArchivePath \
  $otherVariables
  
# Create the XCFramework
xcodebuild -create-xcframework \
  -framework $deviceFrameworkPath \
  -framework $simulatorFrameworkPath \
  -output $xcframeworkPath

# Clean up
rm -rf $archivePath