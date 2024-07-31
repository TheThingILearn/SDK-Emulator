#!/bin/bash

export ANDROID_USER_HOME=$HOME/.android
export ANDROID_HOME=$HOME/android_sdk
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/platform-tools
source ~/.bashrc

echo "what veriosn of android you want to install? version example: 35, 34, 33, 32..."
echo -n "the version number: "
read -r vr

while true; do
echo -n "do you want Playstore on that device y/n: "
read -r yn
case $yn in
   [Yy]* ) break;;
   [Nn]* ) break;;
   * ) echo "Please answer yes or no (y/n).";;
 esac
done

# Navigate to the Downloads directory
cd ~/Downloads
echo "Unziping the command line tools"
unzip commandlinetools-linux-11076708_latest
# Navigate back to the home directory
cd ~
echo "Creating the android_sdk directory"
mkdir -p android_sdk
# Move the command line tools to the android_sdk directory
mv ~/Downloads/cmdline-tools ~/android_sdk
# Navigate to the cmdline-tools directory
cd ~/android_sdk/cmdline-tools
# Create the latest directory
mkdir latest
# Move necessary files to the latest directory
mv lib bin NOTICE.txt source.properties latest
# Navigate to the bin directory
cd ~/android_sdk/cmdline-tools/latest/bin

echo "install platform-tools"
yes | ./sdkmanager platform-tools

echo "install emulator"
./sdkmanager emulator

echo "Install Android platform $vr"
./sdkmanager "platforms;android-$vr"

case $yn in
[yY] ) echo "Install system image for Android platform with Playstore $vr"
./sdkmanager "system-images;android-$vr;google_apis_playstore;x86_64";;

[nN] ) echo "Install system image for Android platform $vr"
./sdkmanager "system-images;android-$vr;google_apis;x86_64";;
esac

echo "Install build-tools version $vr.0.0"
./sdkmanager "build-tools;$vr.0.0"

#case $yn in
#[yY] ) echo "creating avd name PSandroid$vr with Playstore"
#no | ./avdmanager create avd --name PSandroid$vr --package "system-images;android-$vr;google_apis_playstore;x86_64" --device "pixel_3";;
#break;;

#[nN] ) echo "creating avd name android$vr"
#no | ./avdmanager create avd --name android$vr --package "system-images;android-$vr;google_apis;x86_64" --device "pixel_3";;
#esac

if [[ $yn == [yY] ]]; then
    echo "creating avd name PSandroid$vr with Playstore"
    no | ./avdmanager create avd --name PSandroid$vr --package "system-images;android-$vr;google_apis_playstore;x86_64" --device "pixel_3"
elif [[ $yn == [nN] ]]; then
    echo "creating avd name android$vr"
    no | ./avdmanager create avd --name android$vr --package "system-images;android-$vr;google_apis;x86_64" --device "pixel_3"
fi
echo "all done"
