#!/usr/bin/env bash
for d in $DEV/dev*; do $d/bin/antidote start; done
for d in $DEV/dev{2,3,4,5,6}; do $d/bin/antidote-admin cluster join 'dev1@127.0.0.1'; done
$DEV/dev1/bin/antidote-admin cluster plan
$DEV/dev1/bin/antidote-admin cluster commit
