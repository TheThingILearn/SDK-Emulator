# sdkamulator
script for the sdk manager for linux that make it easier to setup sdk manger on 
your computer and to install and run android emulators.

## Getting Started
after you go over all the steps in the guide you will have up and running android emulator.

### Prerequisites
- the commnad line tools: enter that link https://developer.android.com/studio.
and scroll down till you get to the section called "Command line tools only".
download the sdk tools packeage for linux. 🚫🚫don't unzip it the script will do that🚫🚫

- openjdk-17 (search for it in your destro app manager) and download that

## copy the resporetry  

### enviormant veribal (for all users put it in the .bashrc file)
```
export ANDROID_USER_HOME=$HOME/.android
export ANDROID_HOME=$HOME/.android
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/platform-tools
```
