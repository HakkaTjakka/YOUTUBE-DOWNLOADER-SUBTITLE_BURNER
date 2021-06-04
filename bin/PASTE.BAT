@echo off
if exist mylist.txt del mylist.txt
rem (for %%i in (output0*.mp4) do @echo file '%%i') > mylist.txt
rem (for %%i in (output_2020*.mp4) do @echo file '%%i') >> mylist.txt
REM ffmpeg -y -ss 00:34:00 -i summer.mp3 -safe 0 -f concat -i mylist.txt -shortest -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 12M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 output.mp4
rem ffmpeg -y -safe 0 -f concat -i mylist.txt -c copy output_long.mp4

rem ffmpeg -y -ss 00:52:00 -i deep.mp3 -safe 0 -f concat -i mylist.txt -shortest -c copy output_long.mp4

rem ffmpeg -y -ss 00:12:34 -i hard.mp3 -safe 0 -f concat -i mylist.txt -shortest -c copy output_long.mp4

rem if not exist out mkdir out
rem ffmpeg -i output_long.mp4 -vf fps=1/6.9157 out/out3%%d.jpg

rem ffmpeg -y -ss 00:12:34 -i hard.mp3 -safe 0 -f concat -i mylist.txt -shortest -vf setpts=0.1*PTS -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 output000_fast.mp4
REM ffmpeg -y -ss 01:01:01 -i hard.mp3 -safe 0 -f concat -i mylist.txt -shortest -vf setpts=0.1*PTS -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 output000_fast.mp4

rem ffmpeg -i input.mkv -filter "minterpolate='mi_mode=mci:mc_mode=aobmc:vsbmc=1:fps=120'" output.mkv
rem ffmpeg -y -i output000_stil.mp4 -vf setpts=0.1*PTS -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 output000_fast.mp4


rem ffmpeg -y -ss 00:12:34 -i hard.mp3 -safe 0 -f concat -i mylist.txt -shortest -vf setpts=0.1*PTS -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 output000_fast.mp4

rem ffmpeg -y -safe 0 -f concat -i mylist.txt -c copy output_long.mp4

rem ffmpeg -i output_long.mp4 -vf "setpts=N/600/TB" -r 600 -crf 18 output.mov
rem ffmpeg -i output_long.mp4 -vf "setpts=N/600/TB" -r 600 output_huh.mp4

rem ffmpeg -y -safe 0 -f concat -i mylist.txt -vf setpts=0.1*PTS -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 output000_fast.mp4

rem ffmpeg -y -ss 00:34:00 -i summer.mp3 -i output.mp4 -shortest -c copy output2.mp4
rem ffmpeg -y -ss 00:03:20 -i music_tot.mp3 -i output.mp4 -shortest -c copy output2.mp4


rem ffmpeg -y -i rio.mp4 -codec:a libmp3lame -q:a 2 rio.mp3
rem ffmpeg -y -i skelet.webm -codec:a libmp3lame -q:a 2 skelet.mp3
rem ECHO file 'SMURF.MP3' > MYLIST.TXT
rem ECHO file 'KONIJN.MP3' >> MYLIST.TXT
rem ECHO file 'VD.MP3' >> MYLIST.TXT
rem ECHO file 'SMURF.MP3' >> MYLIST.TXT
rem ECHO file 'KONIJN.MP3' >> MYLIST.TXT
rem ECHO file 'VD.MP3' >> MYLIST.TXT
rem 
rem rem ECHO file 'SKELET.MP3' >> MYLIST.TXT
rem rem ffmpeg -y -safe 0 -f concat -i mylist.txt -c copy SKELET_LONG.mp3
rem 
rem rem ECHO file 'gun.m4a' > MYLIST.TXT
rem rem ECHO file 'gun.m4a' >> MYLIST.TXT
rem rem ECHO file 'gun.m4a' >> MYLIST.TXT
rem rem ECHO file 'gun.m4a' >> MYLIST.TXT
rem ffmpeg -y -safe 0 -f concat -i mylist.txt  -codec:a libmp3lame -q:a 2 MAF.MP3


rem echo file 'rio.mp3' > mylist.txt
rem echo file 'samba.mp3' >> mylist.txt
rem echo file 'deep.mp3' > mylist.txt
rem echo file 'summer.mp3' >> mylist.txt
rem echo file 'top.mp3' >> mylist.txt
rem echo file 'opus.mp3' >> mylist.txt
rem echo file 'mix.mp3' > mylist.txt
rem echo file 'mix.mp3' >> mylist.txt
rem echo file 'mix.mp3' >> mylist.txt
rem echo file 'mix.mp3' >> mylist.txt
rem 
rem ffmpeg -y -safe 0 -f concat -i mylist.txt -c copy rio_music.mp3

rem ffmpeg -y -i train.mp3 -t 00:00:58 -filter:a "volume=1.75" train1.mp3
REM ffmpeg -y -i train.mp3 -t 00:00:58 -c copy train1.mp3
REM timeout 3
rem ffmpeg -y -i old2.mp3 -filter:a "volume=0.7" old_soft.mp3
rem timeout 3

REM ffmpeg -y -stream_loop -1 -i train1.mp3 -t 01:00:00 -i old2.mp3 -shortest -filter_complex "[0][1]amix=inputs=2" -strict -2 combined.mp3
REM timeout 3

rem ffmpeg -y -i audio.mp3 -filter:a "volume=20.0" -codec:a libmp3lame -q:a 2 audio_loud.mp3
(for %%i in (output_2021*.mp4) do @echo file '%%i') >> mylist.txt
rem  	(for %%i in (output8*.mp4) do @echo file '%%i') > mylist.txt
rem  	(for %%i in (output9*.mp4) do @echo file '%%i') >> mylist.txt
rem (for %%i in (2021*.mp4) do @echo file '%%i') > mylist.txt

ffmpeg -y -safe 0 -f concat -i mylist.txt -c copy rio.mp4
rem timeout 3

ffmpeg -y -ss 00:10:00 -i mix.mp3 -i rio.mp4 -shortest -c copy rio1.mp4

rem ffmpeg -y -i skelet_long.mp3 -ss 00:00:00.1 -i output1611131944.mp4 -c copy new_audio.mp4
rem ffmpeg -y -i maf.mp3 -i rio.mp4 -strict -2 -shortest -c copy new_audio.mp4

rem ffmpeg -y -ss 00:00:00 -i BLINDING.mp3 -i rio.mp4 -strict -2 -shortest -c copy new_audio.mp4
rem ffmpeg -y -ss 00:00:00 -stream_loop -1 -i BLINDING.mp3 -i rio.mp4 -shortest -strict -2 -c copy new_audio.mp4

rem ffmpeg -y -ss 00:00:00 -stream_loop -1 -i MIX.mp3 -i rio.mp4 -t 00:27:45 -shortest -strict -2 -c copy new_audio5.mp4
timeout 3


rem ffmpeg -i new_audio.mp4 -f srt -i rio.srt -map 0:0 -map 0:1 -map 1:0 -c:v copy -c:a copy -c:s mov_text -metadata:s:s:0 language=English -disposition:s:s:0 forced output.mp4

rem  ffmpeg -y -i new_audio.mp4 -t 00:13:53 -c copy result.mp4
REM ffmpeg -y -i hard_soft.mp3 -i rio.mp4 -strict -2 -shortest -vf decimate=scthresh=0 -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 new_audio.mp4



rem ffmpeg -y -ss 00:05:00 -i mix.mp3 -i rio.mp4 -vf setpts=0.5*PTS,fps=60 -strict -2 -shortest -c:a copy -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 new_audio.mp4

rem ffmpeg -y -i rio.mp4 -strict -2 -shortest -filter:v "setpts=0.5*PTS" -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -bufsize 20M -b:v 10M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 new_audio.mp4

rem ffmpeg -y -ss 00:00:00 -i rio_music.mp3 -i rio.mp4 -strict -2 -shortest -c copy new_audio.mp4

rem ffmpeg -y -i audio.mp3 -filter:a "volume=20.0" -codec:a libmp3lame -q:a 2 audio_loud.mp3

rem ffmpeg -y -hide_banner -i new_audio.mp4 -i audio_loud.mp3 -filter_complex "[0][1]amix=inputs=2" -strict -2 -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 -ac 2 -ar 44100 -acodec aac -shortest output.mp4

rem ffmpeg -y -ss 00:05:00 -i mix.mp3 -i rio.mp4 -strict -2 -shortest -vf decimate=scthresh=100 -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M new_audio.mp4
rem ffmpeg -y -ss 00:27:00 -i mix.mp3 -i rio.mp4 -strict -2 -shortest -vf decimate -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M new_audio.mp4


rem ffmpeg -y -ss 00:00:02 -i skelet.webm -i rio.mp4  -t 00:00:25 -strict -2 -shortest -c copy new_audio.mp4

rem ffmpeg -y -ss 00:17:30 -i hard_soft.mp3 -i rio.mp4  -strict -2 -shortest -c copy new_audio.mp4
REM ffmpeg -y -ss 00:05:00 -i deep.mp3 -i rio.mp4 -shortest -c copy rio_audio.mp4

rem ffmpeg -y -ss 00:00:28 -i a0.mp4 -t 00:00:24 -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 lo1.mp4
rem ffmpeg -y -ss 00:01:28 -i a0.mp4 -t 00:00:55 -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 lo2.mp4

rem (for %%i in (lo*.mp4) do @echo file '%%i') > mylist.txt
rem ffmpeg -y -safe 0 -f concat -i mylist.txt -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 fb1.mp4
rem ffmpeg -y -safe 0 -f concat -i mylist.txt -c copy fb1.mp4

rem ffmpeg -y -ss 00:52:00 -i deep.mp3 -i fb1.mp4 -shortest -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 12M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 -c:a aac -b:a 96k fb.mp4
rem ffmpeg -y -ss 00:52:00 -i deep.mp3 -i fb1.mp4 -shortest -c copy fb.mp4
rem ffmpeg -y -i fb1.mp4 -vcodec libvpx -acodec libvorbis fb.webm

rem ffmpeg.exe -i fb1.mp4 -s hd480 -vcodec libvpx -g 120 -lag-in-frames 16 -deadline good -cpu-used 0 -vprofile 0 -qmax 63 -qmin 0 -b:v 768k -acodec libvorbis -ab 112k -ar 44100 -f webm fb_test.webm

rem ffmpeg -y -ss 00:52:00 -i deep.mp3 -i fb1.mp4 -shortest -filter:v "crop=1920:700:0:190" -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 12M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 fb.mp4





pause

rem ffmpeg -y -i opus.OPUS -codec:a libmp3lame -q:a 2 OPUS.MP3
