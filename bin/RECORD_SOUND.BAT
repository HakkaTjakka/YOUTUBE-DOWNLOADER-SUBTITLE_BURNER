@ECHO OFF


rem ffmpeg -loop 1 -i image.jpg -i audio.mp3 -t 00:03:49 -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 -tune stillimage -c:a aac -b:a 192k -vf "scale='iw-mod(iw,2)':'ih-mod(ih,2)',format=yuv420p" -shortest -movflags +faststart STILL.MP4

rem ffmpeg -loop 1 -i image.jpg -i audio.mp3 -t 00:03:49 -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 -tune stillimage -shortest -movflags +faststart STILL.MP4

rem ffmpeg -y -i output000_stil.mp4 -vf setpts=0.1*PTS -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 output000_fast.mp4


rem PAUSE
ffmpeg -y -guess_layout_max 0 -rtbufsize 1024M -thread_queue_size 1024 -f dshow -i audio="Stereo Mix (Realtek High Definition Audio)" AUDIO.MP3
PAUSE


rem try
rem -rtbufsize 1024M -thread_queue_size 1024 -f dshow -i audio="Stereo Mix (Realtek High Definition Audio)" -async 1 -f rawvideo -pix_fmt bgr24 -s %WIDTH%x%HEIGHT% -r 60 -i - -vf vflip -segment_time 00:01:00 -f segment -reset_timestamps 1 -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset fast -rc:v vbr_hq -rc-lookahead 32 -c:a aac -b:a 96k f:/record2/output_%NAME%_%03d.mp4

rem orig
rem -rtbufsize 1024M -thread_queue_size 1024 -f rawvideo -pix_fmt bgr24 -s %WIDTH%x%HEIGHT% -r 60 -i - -vf vflip -segment_time 00:01:00 -f segment -reset_timestamps 1 -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset fast -rc:v vbr_hq -rc-lookahead 32 f:/record2/output_%NAME%_%03d.mp4

ffmpeg -guess_layout_max 0 -y -f dshow -video_size 3440x1440 -rtbufsize 2147.48M -pixel_format nv12 -framerate 200 ^
-i video="Video (00 Pro Capture HDMI 4K+)":audio="SPDIF/ADAT (1+2) (RME Fireface UC)" -map 0:0,0:1 -map 0:1 ^
-preset: llhp -codec:v h264_nvenc -pix_fmt nv12 -b:v 250M -maxrate:v 250M -minrate:v 250M -bufsize:v 250M -b:a 320k ^
-ac 2 -r 100 -async 1 -vsync 1 -segment_time 600 -segment_wrap 9 -f segment C:\Users\djcim\Videos\PC\PC%02d.mp4 ^
-guess_layout_max 0 -f dshow -rtbufsize 2000M -i audio="Analog (3+4) (RME Fireface UC)" -map 1:0 -b:a 320k -ac 2 ^
-af "adelay=200|200" -segment_time 600 -segment_wrap 9 -f segment C:\Users\djcim\Videos\PC\Voices\Theirs\TPC%02d.wav ^
-guess_layout_max 0 -f dshow -rtbufsize 2000M -i audio="Analog (5+6) (RME Fireface UC)" -map 2:0 -b:a 320k -ac 2 ^
-af "adelay=825|825" -segment_time 600 -segment_wrap 9 -f segment C:\Users\djcim\Videos\PC\Voices\Mine\MPC%02d.wav