```
$ bnd version
6.2.0.202202251641
```

```
$ ./make.sh
+ rm -rf out
+ javac --release 11 Main.java
+ file Main.class
Main.class: compiled Java class data, version 55.0 (Java SE 11)
+ mkdir -p out/com/io7m/example
+ mkdir -p out/META-INF/
+ cp manifest.txt out/META-INF/MANIFEST.MF
+ cp Main.class out/com/io7m/example
+ cd out
+ zip -r -9 ../bundle11.jar META-INF com
updating: META-INF/ (stored 0%)
updating: META-INF/MANIFEST.MF (deflated 36%)
updating: com/ (stored 0%)
updating: com/io7m/ (stored 0%)
updating: com/io7m/example/ (stored 0%)
updating: com/io7m/example/Main.class (deflated 23%)
+ cd ..
+ rm -rf out
+ javac --release 17 Main.java
+ file Main.class
Main.class: compiled Java class data, version 61.0
+ mkdir -p out/com/io7m/example
+ mkdir -p out/META-INF/
+ cp manifest.txt out/META-INF/MANIFEST.MF
+ cp Main.class out/com/io7m/example
+ cd out
+ zip -r -9 ../bundle17.jar META-INF com
updating: META-INF/ (stored 0%)
updating: META-INF/MANIFEST.MF (deflated 36%)
updating: com/ (stored 0%)
updating: com/io7m/ (stored 0%)
updating: com/io7m/example/ (stored 0%)
updating: com/io7m/example/Main.class (deflated 23%)
+ cd ..
```

```
$ bnd baseline bundle11.jar bundle17.jar
===============================================================
* com.io7m.example 1.0.0-1.0.0 suggests 1.0.1
===============================================================
```

