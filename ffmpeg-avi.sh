echo "encoding $1"

ffmpeg -i $1 -vcodec msmpeg4v2 -acodec adpcm_ima_wav "$1.avi"
