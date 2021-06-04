@echo off
rem ffmpeg -y -i "pic.mp4" -vf fps=30,scale=320:-1:flags=lanczos,palettegen "pic.png"
rem ffmpeg -y -i "pic.mp4" -vf fps=30,palettegen "pic.png"

ffmpeg -y -loop 1 -i "b (2).jpg" -t 0.5 -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 -shortest "ct1.mp4"
ffmpeg -y -loop 1 -i "b (3).jpg" -t 0.5 -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 -shortest "ct2.mp4"
ffmpeg -y -loop 1 -i "b (4).jpg" -t 1.0 -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 -shortest "ct3.mp4"

echo file 'ct1.mp4' > mylist.txt
echo file 'ct2.mp4' >> mylist.txt
echo file 'ct3.mp4' >> mylist.txt
ffmpeg -y -safe 0 -f concat -i mylist.txt -c copy ct.mp4

ffmpeg -y -i "ct.mp4" -vf fps=30,palettegen "ct.png"
rem ffmpeg -y -i ct.mp4 -i ct.png -filter_complex "fps=30[x];[x][1:v]paletteuse" ct.gif
rem ffmpeg -y -i ct.mp4 -i ct.png -filter_complex "fps=30,scale=320:-1:flags=lanczos[x];[x][1:v]paletteuse" ct.gif
ffmpeg -y -i ct.mp4 -i ct.png -filter_complex "fps=10[x];[x][1:v]paletteuse" ct.gif

pause

rem preklad 	