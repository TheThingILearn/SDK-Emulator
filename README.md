# SDK-Emulator
the sdk command line tools its great tool for creating android emulators. but he can be a bit annoying to use 
asspechely if all you want is just create simplae android emulator. that why i created that simple script that
make that procces alot easier.

#### what that script can do?
- name the amulator
- pick api-level
- decide defult android or with google api(gmail, chrome, maps...)
- chose if you want play store installed

and of course i will try to add more features with out making it to overwhelmed
so let me know by ⭐⭐star the project⭐⭐

and if you have somthing you want to add open issues request and i will try to add.
  
## Getting Started
### Prerequisites
- enable virtualization - search in the intarnet how to ebale virtualization in the bios of your mother board.
  
- commnad line tools - go to that link https://developer.android.com/studio.
and scroll down till you get to the section called "Command line tools only".
download the sdk tools packeage for linux. 🚫🚫don't unzip the command line tools the script will do that🚫🚫

- openjdk-17 - search for it in your destro package manager and download it.

  opensuse
  ```
  sudo zypper install java-17-openjdk
  ```
  Debian/ubuntu (not tested)
  ```
  sudo apt install default-jdk
  ```

## Installing 
1. clone the project and unzip it to your home Directory.
```
cd ~
git clone https://github.com/TheThingILearn/SDK-Emulator
```
⚠️if you download the source code manually and not with the command line change the name of the unzip file to `SDK-Emulator` and put the file in the home Directory⚠️

2. make the script executable. go to the file and open it in the terminal and run the command below.
```
chmod +x cemu
chmod +x remu
```

4. set up your enviormant veribal copy and paste it to the end of your .bashrc file. the file should be a hidden in the home Directory so for show the file 
do `ctrl+h` and you should now see the file.
```
export ANDROID_USER_HOME=$HOME/.android
export ANDROID_HOME=$HOME/.android
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/platform-tools
```
4. After you saved the file. source the file with the fllowing command in a terminal.
```
source .bashrc
```
### last steps
- make sure the zipped file of the commandline-tools is in the Downloads folder in your home Directory.(`~/Downoalds`)
- make sure you ran the `source .bashrc` command.
- make sure you unzipped that cloned project and put it in the home Directory.(`~/SDK-Emulator`)
- make sure when you ran `java --version` the version is start with 17 or newer.

## How to run the emulator?
1. go to the SDK-Emulator file.
2. right click on the file and click `open in terminal`.
3. in the terminal wright `./cemu` to create new emulator.
4. read the steps and create your new emulator.
5. after you craeted emulator in the same terminal wright `./remu`.
6. chose the name of the emulator you created.
7. and that it you have emualtor up and runing.

## recommendation and tips
### run the emulator from everywhere
1. go to your home Directory and open the bin folder (if you dont have create one).
2. in the bin folder put the script folder (SDK-Emulator).
3. now open your .bashrc file and add thet.
```
PATH="$PATH:$HOME/bin/SDK-Emulator/"
```
4. and last do `source .bashrc` in terminal.

create new emulator open new terminal and do `cemu` with out the `./`
and to run the emulator do `rcemu`.

### config flutter to the new sdk
if you followed the guides here you should just do the code below and the flutter doctor error will disspaer.
```
flutter config --android-sdk ~/android_sdk
```
to accept android licenses do the code below and accept it.
```
flutter doctor --android-licenses
```
### Hot reload
```
#!/bin/bash

# Directory or file to watch for changes
WATCH_DIR=$(pwd)  # Change this to the directory or file you want to monitor

# Find all files in the directory and monitor them with entr
find "$WATCH_DIR" -type f | entr -r bash -c 'kill -SIGUSR1 $(pgrep -f "[f]lutter_tool.*run")'
```

## NOTE
the script will automatically agree to any policy in the way
