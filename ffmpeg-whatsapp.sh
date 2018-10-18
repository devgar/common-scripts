#!/bin/bash

ffmpeg -i $1 -c:v libx264 -c:a aac "$2".mp4
