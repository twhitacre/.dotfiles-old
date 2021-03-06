#!/usr/bin/env bash
RDIO_TRACK=$(osascript <<EOF
if appIsRunning("Rdio") then
    tell app "Rdio" to get the name of the current track
end if

on appIsRunning(appName)
    tell app "System Events" to (name of processes) contains appName
end appIsRunning
EOF)

if test "x$RDIO_TRACK" != "x"; then
RDIO_ARTIST=$(osascript <<EOF
if appIsRunning("Rdio") then
    tell app "Rdio" to get the artist of the current track
end if

on appIsRunning(appName)
    tell app "System Events" to (name of processes) contains appName
end appIsRunning
EOF)

    echo '♫' $RDIO_TRACK '#[nobold]-#[bold]' $RDIO_ARTIST 
fi
