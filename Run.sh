#!/bin/bash

echo "what android version you want to run?"
echo -n "the version number: "
read -r vr

echo "running android$vr emulator"
cd ~/android_sdk/emulator/
./emulator -avd android$vr
