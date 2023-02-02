#!/bin/bash

kill $(</tmp/turn-off-display.pid)
kill $(</tmp/ssh-rm-keys.pid)
