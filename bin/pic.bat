@echo off
rem ffmpeg -y -i "pic.mp4" -vf fps=30,scale=320:-1:flags=lanczos,palettegen "pic.png"
rem ffmpeg -y -i "pic.mp4" -vf fps=30,palettegen "pic.png"

ffmpeg -y -loop 1 -i "gd.jpg" -t 1 -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 -shortest "ct.mp4"
ffmpeg -y -i "ct.mp4" -vf fps=30,palettegen "ct.png"
rem ffmpeg -y -i ct.mp4 -i ct.png -filter_complex "fps=30[x];[x][1:v]paletteuse" ct.gif
rem ffmpeg -y -i ct.mp4 -i ct.png -filter_complex "fps=30,scale=320:-1:flags=lanczos[x];[x][1:v]paletteuse" ct.gif
ffmpeg -y -i ct.mp4 -i ct.png -filter_complex "fps=30[x];[x][1:v]paletteuse" gd.gif

pause

rem preklad 	