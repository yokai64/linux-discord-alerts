#!/bin/bash

curl -d '{ "embeds": [ { "title": "Server Shutting Down", "description": "Services will not be available until next boot.", "color": 6052956, "thumbnail": {} } ] }' -H "Content-Type: application/json" -X POST "$DISCORD_WEBHOOK"

echo 0 > hard-stop.track
