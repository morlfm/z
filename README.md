### ZE Delivery - API automation with Ruby/Airborne and Mobile(Android) Automation with Appium and Cucumber

If you are using a real device please make sure to have usb connected and usb debug enabled
Virtual device can be created at Android Studio/ Tools / AVD manager

Installing Enviroment Mac OS

Install Homebrew:
```bash
   /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
Install JDK for Mac:
   http://www.oracle.com/technetwork/java/javase/downloads/index.html

Instaling and seting rbenv:
```bash
   brew install rbenv
   echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
   rbenv install -l
   rbenv install 2.3.1 #Ou versão superior estável
   rbenv local 2.3.1
 ```

Install Android Studio - It will install all other necessary dependencies like Sdk,Platform Tools,ADB
   https://developer.android.com/studio/index.html?hl=pt-br

Install Appium Client
   http://appium.io/ => Clique em download e baixe a versão mais recente para o seu SO

### JAVA Enviroment Variables:

```bash
open your ~/.bash_profile or ~/.zshrc_profile
```
Set and Save :
```bash
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$JAVA_HOME/bin:$PA
```
### ANDROID Enviroment Variables:
```bash
open your ~/.bash_profile or ~/.zshrc_profile
```
Set and Save:
```bash
export ANDROID_HOME=/Users/<user>/Library/Android/sdk
export PATH=$ANDROID_HOME/tools/bin:$PATH
export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_HOME/platform-tools/adb:$PATH
export PATH=$ANDROID_HOME/emulator/:$PATH
```
#### <user> change to your user


### Installing Gems from Ruby on your terminal:

```bash
gem install bundle
```

## Project Exec:

a)Git clone: https://github.com/morlfm/ze_Delivery
b)Go to the project folder on your terminal and do :
```bash
bundle
```

d)Open Appium server and start server
e)On terminal to start test with report do :

```bash
cucumber -p report
```

To see report with results go to the folder report and open file.html


Run automated API tests with report
    Go to project folder ./ze_delivery and run :
```bash
rspec --pattern api/*_spec.rb --format html --out api.html
```

To see report with results nagivate to project root and open the 'file'.html
