#!/usr/bin/env bash

# This script will follow the script eas-build-pre-install located in package.json and will be executed before EAS Build runs npm install on the EAS Build platform.
echo "running pre-install.sh"

# Install CMake
# Required for react-native-static-server
if [[ "$EAS_BUILD_PLATFORM" == "android" ]]; then
  sudo apt-get install --yes cmake
elif [[ "$EAS_BUILD_PLATFORM" == "ios" ]]; then
  HOMEBREW_NO_AUTO_UPDATE=1 brew install cmake
fi
