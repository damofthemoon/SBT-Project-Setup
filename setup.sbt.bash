#!/bin/bash
mkdir -p $1/src/{main,test}/{java,resources,scala}
mkdir $1/lib $1/project $1/target

# create an initial build.sbt file
echo "name := \"$1\"" > $1/build.sbt
echo 'version := "1.0"' >> $1/build.sbt
echo 'scalaVersion := "2.11.8"' >> $1/build.sbt


echo "addSbtPlugin(\"com.typesafe.sbteclipse\" % \"sbteclipse-plugin\" % \"4.0.0\")" > $1/project/pluins.sbt
