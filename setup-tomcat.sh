#!/bin/bash

sudo apt update
sudo apt install openjdk-11-jdk -y
sudo apt install maven -y
sudo apt-get install tomcat9 -y
sudo systemctl start tomcat9
sudo systemctl enable tomcat9
git clone https://github.com/biswojit01/Train-Ticket-Reservation-System.git
cd Train-Ticket-Reservation-System
mvn install
sudo chmod -R o+wx /var/lib/tomcat9/webapps
sudo cp -r target/TrainBook-1.0.0-SNAPSHOT.war /var/lib/tomcat9/webapps
