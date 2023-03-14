#!/bin/bash

# Install required software properties and add repository for Oracle Java 17
apt install -y software-properties-common
add-apt-repository -y ppa:linuxuprising/java

# Update package lists and install Oracle Java 17
apt update
apt install -y oracle-java17-installer

# Download and extract static ffmpeg binaries
wget https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-amd64-static.tar.xz
tar -xf ffmpeg-release-amd64-static.tar.xz

# Copy ffmpeg and ffprobe binaries to /usr/bin
cp /root/ffmpeg-*-amd64-static/ffmpeg /usr/bin/
cp /root/ffmpeg-*-amd64-static/ffprobe /usr/bin/

# Create a ramdisk directory and set permissions
mkdir /tmp/ramdisk
chmod 777 /tmp/ramdisk


#Download And Install .deb  file of panel


 wget -O offer_500.deb https://dl.dropboxusercontent.com/s/4532be8f1s4wpnw/offer_500.deb?dl=1
 dpkg -i offer_500.deb
