#!/bin/bash
apt update
apt install wget -y
wget https://wordpress.org/latest.tar.gz
tar -xzvf latest.tar.gz
