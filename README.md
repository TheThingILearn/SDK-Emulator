# SDK-Emulator
script for the sdk manager for linux that make it easier to setup sdk manger on 
your computer and to install and run android emulators.

## Getting Started
after you go over all the steps in the guide you will have up and running android emulator.

### Prerequisites
#### before we start you will need to download the command line tools and openjdk 17

- commnad line tools - go to that link https://developer.android.com/studio.
and scroll down till you get to the section called "Command line tools only".
download the sdk tools packeage for linux. 🚫🚫don't unzip it the script will do that🚫🚫

- openjdk-17 - search for it in your destro repositories and download it

## Installing 
1. clone the project and unzip it to wherever you want the script to be (look in the end for suggsegtion)
```
git clone https://github.com/TheThingILearn/SDK-Emulator
```
### enviormant veribal
2. set up your enviormant veribal copy and paste it to the end of your .bashrc file. the file should be a hidden so for show the file 
do `ctrl+h` and you should now see the file
```
export ANDROID_USER_HOME=$HOME/.android
export ANDROID_HOME=$HOME/.android
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/platform-tools
```
3. After you saved the file do that command in a terminal
```
source .bashrc
```
### last steps
- make sure the zipped file of the commandline-tools is in the Downloads folder in your home folder
- make sure you ran the `source .bashrc` command
- make sure you unzipped that cloned project and that you can easly excces the script files
- make sure when you ran `java --version` the version is start with 17

## How to run the emulator?
1. go to the SDK-Emulator file
2. right click on the file and click `open in terminal`
3. in the terminal wright `./cemu` to create new emulator
4. read the steps and create your new emulator
5. after you craeted emulator in the same terminal wright `./remu`
6. chose the name of the emulator you created
7. and that is you have emualtor up and runing
