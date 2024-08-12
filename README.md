# SDK-Emulator
script for the sdk manager for linux that make it easier to setup sdk manger on 
your computer and to install and run android emulators.

## Getting Started
after you go over all the steps in the guide you will have up and running android emulator.

### Prerequisites
- commnad line tools - go to that link https://developer.android.com/studio.
and scroll down till you get to the section called "Command line tools only".
download the sdk tools packeage for linux. 🚫🚫don't unzip it the script will do that🚫🚫

- openjdk-17 - (search for it in your destro repositories) and download it

## Installing 
clone the project and unzip it to wherever you want the script to be (look in the end for suggsegtion)
```
git clone https://github.com/TheThingILearn/SDK-Emulator
```
### enviormant veribal
set up your enviormant veribal copy and paste in the .bashrc it should be a hidden file in the home home directory 
do `ctrl+h` to show hidden files
```
export ANDROID_USER_HOME=$HOME/.android
export ANDROID_HOME=$HOME/.android
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/platform-tools
```
After you saved the file source the file
```
source .bashrc
```
### last steps
- make sure the zipped file of the commandline-tools is in the Downloads folder in your home folder
- make sure you ran the `source .bashrc` command
- make sure you unzipped that cloned project and the you can easly excces the script files 
