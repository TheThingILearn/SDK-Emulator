#!/bin/bash

export ANDROID_USER_HOME=$HOME/.android
export ANDROID_HOME=$HOME/android_sdk
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/platform-tools
source ~/.bashrc

#getting the name of the android veriable
echo "What the name of the emulator (dont forget it, it will be how you run your emulator)"
while true; do
echo -n "emulator name: "
read -r name
if [[ -n "$name" ]] then
   echo "the emulator name is $name"
   break
 else
   echo "please enter name to the amulator"
 fi
done

#getting the api level you can check here https://apilevels.com/
echo "What API level of Android do you want to install? Levels example:(21-35)"
is_valid_api_level() {
  [[ $21 =~ ^[0-9]+$ ]] && [ "$21" -ge 1 ] && [ "$21" -le 35 ]
}

while true; do
  echo -n "Enter the API level number: "
  read -r api

  if is_valid_api_level "$api"; then
    echo "You selected API level $api."
    break
  else
    echo "Invalid input. Please enter a number between 21 and 35."
  fi
done

#checking if you want playstore on the device
while true; do
echo -n "do you want Playstore on that device y/n: "
read -r yn
case $yn in
   [Yy]* ) break;;
   [Nn]* ) break;;
   * ) echo "Please answer yes or no (y/n).";;
 esac
done

#you want the defult or with google api gmail,goole,

# Navigate to the Downloads directory
cd ~/Downloads
echo "Unziping the command line tools"
unzip commandlinetools-linux-11076708_latest
# Navigate back to the home directory
cd ~
echo "Creating the android_sdk directory"
mkdir -p android_sdk
mv ~/Downloads/cmdline-tools ~/android_sdk
cd ~/android_sdk/cmdline-tools
# Create the latest directory
mkdir latest
# Move necessary files to the latest directory
mv lib bin NOTICE.txt source.properties latest
cd ~/android_sdk/cmdline-tools/latest/bin

echo "install platform-tools"
yes | ./sdkmanager platform-tools

echo "install emulator"
./sdkmanager emulator

echo "Install Android platform $api"
./sdkmanager "platforms;android-$api"

case $yn in
[Yy] ) echo "Install system image for Android platform with Playstore $api"
./sdkmanager "system-images;android-$api;google_apis;x86_64";;

[Nn] ) echo "Install system image for Android platform $api"
./sdkmanager "system-images;android-$api;google_apis;x86_64";;
esac

echo "Install build-tools version $api.0.0"
./sdkmanager "build-tools;$api.0.0"

case $yn in
[Yy] ) echo "creating avd name $name with Playstore"
    ./avdmanager create avd --name $name --package "system-images;android-$api;google_apis;x86_64" --device "pixel_3a";;
[Nn] ) echo "creating avd name $name"
    ./avdmanager create avd --name $name --package "system-images;android-$api;google_apis;x86_64" --device "pixel_3a";;
esac

cd ~/Desktop/androidemulator/
echo "$name" >> emulators_name.txt
