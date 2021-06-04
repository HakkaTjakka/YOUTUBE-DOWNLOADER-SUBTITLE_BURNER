@ECHO OFF
pause
rem ffmpeg -y -rtbufsize 1024M -f dshow -video_size 1920x1080 -i video="screen-capture-recorder":audio="Stereo-mix (Realtek High Definition Audio)" -c:v h264_nvenc -qp 0 output.mp4
REM ffmpeg -y -rtbufsize 1024M -f dshow -video_size 1920x1080 -i video="screen-capture-recorder":audio="Lijn (Apowersoft_AudioDevice)" -c:v h264_nvenc -qp 0 output.mp4

rem ffmpeg -y -rtbufsize 1024M -f dshow -video_size 1920x1080 -i video="screen-capture-recorder":audio="virtual-audio-capturer" -c:v h264_nvenc -qp 0 output.mp4

rem rem ffmpeg -y -rtbufsize 1024M -thread_queue_size 1024 -f gdigrab -i desktop -f dshow -i audio="Stereo-mix (Realtek High Definition Audio)" -vf mpdecimate -c:v h264_nvenc -qp 0 output.mp4

rem ffmpeg -y -rtbufsize 1024M -thread_queue_size 1024 -f gdigrab -i desktop -f dshow -i audio="Stereo-mix (Realtek High Definition Audio)" -vf mpdecimate -c:v h264_nvenc -qp 0 output_decimated.mp4

rem ffmpeg -thread_queue_size 1024 -y -hide_banner -f gdigrab -i desktop -f dshow -i audio="Stereo-mix (Realtek High Definition Audio)" -c:v libx264rgb -crf 0 -preset ultrafast recording_FAST2.mkv
rem ffmpeg -thread_queue_size 1024 -y -hide_banner -f gdigrab -i desktop -f dshow -i audio="Stereo-mix (Realtek High Definition Audio)" -c:v libx264rgb -crf 0 -preset ultrafast output.mp4

rem ffmpeg -y -rtbufsize 1024M -thread_queue_size 1024 -f gdigrab -i desktop -f dshow -i audio="Stereo-mix (Realtek High Definition Audio)" -vf mpdecimate -segment_time 00:10:00 -f segment -reset_timestamps 1 -c:v h264_nvenc -qp 0 output%%03d.mp4

rem ffmpeg -y -rtbufsize 1024M -thread_queue_size 1024 -f dshow -i video="Logitech HD Webcam C310":audio="Microfoon (HD Webcam C310)" -vf mpdecimate -segment_time 00:10:00 -f segment -reset_timestamps 1 -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 12M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 output%%03d.mp4
rem ffmpeg -y -rtbufsize 1024M -thread_queue_size 1024 -f dshow -i video="Logitech HD Webcam C310":audio="Microfoon (ManyCam Virtual Microphone)" -vf mpdecimate -segment_time 00:10:00 -f segment -reset_timestamps 1 -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 12M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 -codec:a libmp3lame -q:a 2 output%%03d.mp4

rem ffmpeg -y -rtbufsize 1024M -thread_queue_size 1024 -f gdigrab -framerate 30 -i desktop -f dshow -i audio="Stereo-mix (Realtek High Definition Audio)" -vf mpdecimate -c:v h264_nvenc -qp 0 output_decimated.mp4
																								          
rem ffmpeg -y -rtbufsize 1024M -thread_queue_size 1024 -f gdigrab -framerate 30 -i desktop -f dshow -i audio="Stereo Mix (Realtek High Definition Audio)" -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 output4.mp4

rem rem ffmpeg -y -rtbufsize 1024M -thread_queue_size 1024 -f gdigrab -framerate 30 -i desktop -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 output4.mp4

rem ffmpeg -y -rtbufsize 1024M -thread_queue_size 1024 -f gdigrab -framerate 30 -i desktop -filter_complex "[0:v]setpts=0.5*PTS[v]" -map "[v]" -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 output4.mp4

rem ffmpeg -y -rtbufsize 1024M -thread_queue_size 1024 -f gdigrab -r 30 -i desktop -f dshow -i audio="Stereo Mix (Realtek High Definition Audio)" -r 60 -vf mpdecimate -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 output9.mp4
ffmpeg -y -rtbufsize 1024M -thread_queue_size 1024 -f gdigrab -r 30 -i desktop -f dshow -i audio="Stereo Mix (Realtek High Definition Audio)" -r 60 -vf mpdecimate -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 1M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 output9.mp4

rem ffmpeg -y -rtbufsize 1024M -thread_queue_size 1024 -f gdigrab -framerate 30 -i desktop -f dshow -i audio="Lijn (Apowersoft_AudioDevice)" -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 output%%03d.mp4
rem ffmpeg -y -rtbufsize 1024M -thread_queue_size 1024 -f gdigrab -framerate 30 -i desktop -f dshow -i audio="Microphone (Realtek High Definition Audio)" -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 output%%03d.mp4
rem ffmpeg -y -rtbufsize 1024M -thread_queue_size 1024 -f gdigrab -framerate 30 -i desktop -f dshow -i audio="Stereo-mix (Realtek High Definition Audio)" -segment_time 00:01:00 -f segment -reset_timestamps 1 -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 output%%03d.mp4
REM ffmpeg -y -rtbufsize 1024M -thread_queue_size 1024 -f gdigrab -framerate 30 -i title="Minecraft* 1.16.3 - Singleplayer" -segment_time 00:01:00 -f segment -reset_timestamps 1 -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset fast -rc:v vbr_hq -rc-lookahead 32 output%%03d.mp4
rem ffmpeg -y -rtbufsize 1024M -thread_queue_size 1024 -f gdigrab -framerate 30 -i title="Minecraft* 1.16.3 - Singleplayer" -segment_time 00:01:00 -f segment -reset_timestamps 1 -c:v h264_nvenc -qp 0 output%%03d.mp4
rem -f gdigrab -i title="Minecraft© 1.16.3 - Singleplayer"


rem -f dshow -i audio="Stereo-mix (Realtek High Definition Audio)"
pause

rem d:/pacman/ffmpeg/bin/ffmpeg.exe -rtbufsize 1024M -thread_queue_size 1024 -f rawvideo -pix_fmt bgr24 -s %WIDTH%x%HEIGHT% -r %FPS% -i - -vf vflip -segment_time 00:01:00 -f segment -reset_timestamps 1 -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset fast -rc:v vbr_hq -rc-lookahead 32 f:/record2/output_%NAME%_%%03d.mp4
rem -f rawvideo -pix_fmt bgr24 -s %WIDTH%x%HEIGHT% -r %FPS% -i - -vf vflip -c:v libx264 -preset ultrafast -tune zerolatency -qp 18 -pix_fmt yuv420p %NAME%.mp4
