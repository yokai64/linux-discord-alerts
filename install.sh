#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "This script installs to /opt and installs systemd services. In order for that to work..."; echo "Please run as root!";
  exit
fi

echo "Copy to /opt..."
cp -r src/opt /opt

echo "Copy systemd service..."
cp src/systemd/alert-online.service 
