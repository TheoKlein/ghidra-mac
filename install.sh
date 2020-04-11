#!/bin/sh

LAUNCHER="https://github.com/TheoKlein/ghidra-mac/raw/master/Ghidra-OSX-Launcher-Template.tgz"
GHIDRA="https://ghidra-sre.org/ghidra_9.1.2_PUBLIC_20200212.zip"
OPEN_JDK="https://download.java.net/java/GA/jdk12.0.2/e482c34c86bd4bf8b56c0b35558996b9/10/GPL/openjdk-12.0.2_osx-x64_bin.tar.gz"

cd /tmp

# Launcher Template
wget $LAUNCHER && \
tar zxvf Ghidra-OSX-Launcher-Template.tgz

# Official ghidra
wget $GHIDRA -O ghidra.zip && \
unzip ghidra.zip -d ./Ghidra.app/ && \
mv ./Ghidra.app/ghidra* ./Ghidra.app/ghidra

# Official OpenJDK
wget $OPEN_JDK -O openjdk.tar.gz && \
tar zxvf openjdk.tar.gz -C Ghidra.app/ && \
mv ./Ghidra.app/jdk* ./Ghidra.app/jdk

# Move app to /Applications and cleanup
mv Ghidra.app /Applications
rm ghidra.zip openjdk.tar.gz Ghidra-OSX-Launcher-Template.tgz
