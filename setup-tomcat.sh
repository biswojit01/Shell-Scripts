#!/bin/bash

sudo apt update
sudo apt install openjdk-11-jdk -y
sudo apt-get install tomcat9 -y
sudo systemctl start tomcat9
sudo systemctl enable tomcat9

