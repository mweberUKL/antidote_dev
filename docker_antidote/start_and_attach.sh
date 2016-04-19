#!/bin/sh

/opt/antidote/bin/antidote start && sleep 10 && tail -f /opt/antidote/log/console.log
