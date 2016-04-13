#!/usr/bin/env bash
$REL/antidote/bin/antidote stop
rm -R $REL/antidote/data/*
$REL/antidote/bin/antidote start
