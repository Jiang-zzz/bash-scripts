#!/usr/bin/env bash
target="../../videos"
output="../../video_frames"
for f in "$target"/*
do
    video_name=$(basename ${f%.*})
    ffmpeg -i ${f} -r 1 "${output}/${video_name}_%04d.jpg" 
done
