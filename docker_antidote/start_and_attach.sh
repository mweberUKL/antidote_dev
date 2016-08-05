#!/bin/sh

trap "echo 'Shutting down' && /opt/antidote/bin/antidote stop" TERM
/opt/antidote/bin/antidote start && sleep 10 && tail -f /opt/antidote/log/console.log & wait ${!}
