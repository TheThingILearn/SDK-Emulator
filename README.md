# sdkamulator
a script for the sdk manager for linux that make it easier to setup sdk manger on 
your computer and to install and run android emulators.

## 1.essential
### you will need the following programs
- the commnad line tools: https://developer.android.com/studio
- openjdk-17 (search in your destro app manager) 

## 2.enviormant veribal (for all users put it in the .bashrc file)
export ANDROID_USER_HOME=$HOME/.android
export ANDROID_HOME=$HOME/.android
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/platform-tools

