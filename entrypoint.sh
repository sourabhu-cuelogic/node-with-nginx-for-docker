#!/bin/bash

echo "Shell script starts...."
service nginx start
echo "Executed nginx and will start node server"
node server.js
echo "Finish scripting..."