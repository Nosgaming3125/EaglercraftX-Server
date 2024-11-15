#!/bin/bash

# Kill existing sessions if they exist
tmux kill-session -t server_session 2>/dev/null
tmux kill-session -t bungee_session 2>/dev/null

# Start the server in a new tmux session
tmux new-session -d -s server_session 'cd server && sudo java -jar server.jar'

# Start Bungee in another tmux session
tmux new-session -d -s bungee_session 'cd bungee && sudo java -jar bungee.jar'
