#!/bin/sh

VOLUME=$1
AUDIO_FILE=$2

amixer set PCM,0 "$VOLUME"%
speaker-test -c2 -s 2 --test=wav -w "$AUDIO_FILE"
