#!/usr/bin/env bash
for d in $DEV/dev*; do $d/bin/antidote stop; done
