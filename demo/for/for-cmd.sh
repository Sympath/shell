#!/bin/bash
for filename in $(ls *.mp3); do
    mv $filename $(basename $filename .mp3).mp4
done
