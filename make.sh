#!/bin/sh -ex

rm -rf out
javac --release 11 Main.java
file Main.class

mkdir -p out/com/io7m/example
mkdir -p out/META-INF/

cp manifest.txt out/META-INF/MANIFEST.MF
cp Main.class out/com/io7m/example

cd out
zip -r -9 ../bundle11.jar META-INF com
cd ..

rm -rf out
javac --release 17 Main.java
file Main.class

mkdir -p out/com/io7m/example
mkdir -p out/META-INF/

cp manifest.txt out/META-INF/MANIFEST.MF
cp Main.class out/com/io7m/example

cd out
zip -r -9 ../bundle17.jar META-INF com
cd ..
