#!/bin/bash

ffmpeg -loop 1 -i 2560x1440.jpg -i Programa4.mp3  -c:v libx264 -tune stillimage -c:a aac -b:a 192k -pix_fmt yuv420p -shortest out.mp4
