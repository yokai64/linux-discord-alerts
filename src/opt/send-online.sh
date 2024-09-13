#!/bin/bash

tracker=$(< hard-stop.track)

if [ "$tracker" == "1" ]; 
then curl -d '{ "embeds": [ { "title": "Server Online after unexpected stop", "description": "Server did not properly shut down last time, for unknown reasons. Server is back online now but  may not yet be fully booted yet, stay tuned for further information ", "color": 3533608, "thumbnail": {} } ] }' -H "Content-Type: application/json" -X POST "$DISCORD_WEBHOOK"; 
else curl -d '{ "embeds": [ { "title": "Server Online", "description": "Server may not yet be fully booted yet, stay tuned for further information ", "color": 3533608, "thumbnail": {} } ] }' -H "Content-Type: application/json" -X POST "$DISCORD_WEBHOOK"; 
fi;

echo 1 > /opt/hard-stop.track
