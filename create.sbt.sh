#!/usr/bin/env bash

if [ $# -eq 0 ]
  then
    echo "No arguments supplied. Please provide a project name"
    exit 1
fi

# Create an initial build.sbt file
mkdir -p src/{main,test}/{java,resources,scala}
mkdir lib project target

# Create an initial build.sbt file
echo "name := \"$1\"
version := \"1.0\"
scalaVersion := \"2.10.0\"" > build.sbt

# Add ScalaCheck as dependency
echo "libraryDependencies += \"org.scalacheck\" %% \"scalacheck\" % \"1.12.5\" % \"test\"" >> "$1/build.sbt"

# Add Eclipse plugin to generate project
echo "addSbtPlugin(\"com.typesafe.sbteclipse\" % \"sbteclipse-plugin\" % \"4.0.0\")" > "$1/project/pluins.sbt"
