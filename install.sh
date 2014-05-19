#! /bin/bash

#auther:bincker
#site:http://t.qq.com/bincker/
echo "Install enviroment Tools and modules"
echo "================================================="
echo "================================================="
dl="tools.zip"
url="http://10.18.25.21/$dl"

echo "PREPARING FOR INSTALLING"
echo "================================================="
echo "================================================="
sudo apt-get install python-dev python-pyrex python-setuptools vim unzip openssh-client openssh-server libc6:i386 libgcc1:i386 gcc-4.6-base:i386 libstdc++5:i386 libstdc++6:i386 libqt4-opengl libglu1-mesa lib32z1 lib32ncurses5 lib32bz2-1.0 libstdc++6 lib32stdc++6 make g++


echo "Install python modules."
echo "================================================="
echo "================================================="
sudo easy_install twisted
sudo easy_install bottle
sudo easy_install pyDes
sudo easy_install PySQLPool

echo "UNZIP THE ZIPED FILES."
echo "================================================="
echo "================================================="
sudo mkdir javas
cd javas
sudo wget "$url"
sudo unzip  "$dl"
sudo rm "$dl"
cd ../
echo "downloaded the tools.zip"
echo "profile prepareing............"
export JAVA_HOME=~/java/jdk1.7.0
export JRE_HOME=~/java/jdk1.7.0/jre
export CLASSPATH=.:$CLASSPATH:$JAVA_HOME/lib:$JAVA_HOME/jre/lib
export PATH=$JAVA_HOME/bin:$JAVA_HOME/jre/bin:$PATH:$HOME/bin
export PATH=$PATH:~/java/android/sdk/tools/
export PATH=$PATH:~/java/android/sdk/platform-tools/
export ANDROID_SDK_Home=~/java/android/sdk/

echo $(pwd)
