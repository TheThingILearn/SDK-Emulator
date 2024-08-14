# SDK-Emulator
After you went over all the steps you can create and define your emulator. for example the name, the api-level of the
emulator if you want the defult device or with google apis(gmail, chrome, maps) and if you want 
Google play store installed on the device.

## Getting Started


### Prerequisites
- enable virtualization - search in the intarnet how to ebale virtualization in the bios on your mother board.
  
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
1. clone the project and unzip it to your home Directory. (look in the end for recommendation).
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
- make sure when you ran `java --version` the version is start with 17.

## How to run the emulator?
1. go to the SDK-Emulator file.
2. right click on the file and click `open in terminal`.
3. in the terminal wright `./cemu` to create new emulator.
4. read the steps and create your new emulator.
5. after you craeted emulator in the same terminal wright `./remu`.
6. chose the name of the emulator you created.
7. and that is you have emualtor up and runing.

## recommendation
### run the emulator from everywhere
1. go to your home Directory and open the bin folder (if you dont have create one).
2. in the bin folder put the script folder (SDK-Emulator).
3. now open your .bashrc file and add thet.
```
PATH="$HOME/bin/SDK-Emulator:$PATH"
```
4. and last do `source .bashrc` in terminal.

not to create new emulator open new terminal and do `cemu` with out the `./`
and to run the emulator do `rcemu`.
