@echo off

rem youtube-dl --extract-audio PLDGvrCyjfEau0spRkUDVKh5JlVbsZ-Kke

rem ffmpeg -i pacman.mp3 -i pacman.mp3 -filter_complex [0:a][1:a]concat=n=2:v=0:a=1 pac_long.mp3
rem ffmpeg -i pac_long.mp3 -i pac_long.mp3 -filter_complex [0:a][1:a]concat=n=2:v=0:a=1 pac_long2.mp3
rem ffmpeg -i pac_long2.mp3 -i pac_long2.mp3 -filter_complex [0:a][1:a]concat=n=2:v=0:a=1 pac_long3.mp3
rem ffmpeg -i pac_long3.mp3 -i pac_long3.mp3 -filter_complex [0:a][1:a]concat=n=2:v=0:a=1 pac_long4.mp3

rem call add_mp3 pacman.mp3 output1544383459.mp4 output_sound.mp4

rem call add_mp3 dark.mp3 out1.mp4 out1_sound.mp4
rem call add_mp3 rain.mp3 out2.mp4 out2_sound.mp4
rem call add_mp3 dark.mp3 out3.mp4 out3_sound.mp4
rem call add_mp3 rain.mp3 out4.mp4 out4_sound.mp4


rem echo file 'win.mp4' > list.txt
rem echo file 'win.mp4' >> list.txt
rem echo file 'win.mp4' >> list.txt
rem echo file 'win.mp4' >> list.txt
rem echo file 'win.mp4' >> list.txt
rem echo file 'win.mp4' >> list.txt

rem ffmpeg -safe 0 -f concat -i list.txt -c copy win2.mp4

rem call add_mp3 pacman.mp3 output1544641593.mp4 output_sound.mp4

rem ffmpeg -safe 0 -f concat -i list.txt -c copy long.mp3

rem ffmpeg -i output1544936155.mp4 -ss 00:00:00 -t 00:34:00  -c copy out11.mp4
rem ffmpeg -i output1544936155.mp4 -ss 00:34:00 -t 00:34:00  -c copy out12.mp4
rem ffmpeg -i output1544936155.mp4 -ss 01:08:00 -t 00:34:00  -c copy out13.mp4
rem ffmpeg -i output1544936155.mp4 -ss 01:42:00 -t 00:35:50  -c copy out14.mp4

rem ffmpeg -i output1544936155.mp4 -ss 00:00:00 -t 00:34:00  -vcodec copy -acodec copy out11.mp4
rem ffmpeg -i output1544936155.mp4 -ss 00:34:00 -t 00:34:00  -vcodec copy -acodec copy out12.mp4
rem ffmpeg -i output1544936155.mp4 -ss 01:08:00 -t 00:34:00  -vcodec copy -acodec copy out13.mp4
rem ffmpeg -i output1544936155.mp4 -ss 01:42:00 -t 00:35:50  -vcodec copy -acodec copy out14.mp4

rem ffmpeg -fflags +igndts -i out2_sound.mp4 -map 0:0 -map 0:2 -c:v copy -c:a copy out2_sound_fixed.mp4
rem call add_mp3 long.mp3 output1544936155.mp4 part_3_sound.mp4
rem call add_mp3 dark.mp3 out1.mp4 out1_sound.mp4
rem ffmpeg -i %1 -i %2 -shortest -codec copy %3


rem ffmpeg -ss 00:00:00 -i long.mp3 -i out11.mp4 -shortest -codec copy out11_sound.mp4
rem ffmpeg -ss 00:34:00 -i long.mp3 -i out12.mp4 -shortest -codec copy out12_sound.mp4
rem ffmpeg -ss 01:08:00 -i long.mp3 -i out13.mp4 -shortest -codec copy out13_sound.mp4
rem ffmpeg -ss 01:42:00 -i long.mp3 -i out14.mp4 -shortest -codec copy out14_sound.mp4


rem ffmpeg -ss 00:01:30 -i old.mp3 -i output1545284687.mp4 -shortest -codec copy cb.mp4

rem ffmpeg -i list.txt i%.mp3"

rem for f in *.mp4; do ffmpeg -i "$f" "${f%.mp4}.mp3"; done


rem ffmpeg -i output1546748971.mp4 -i long_song.mp3 -shortest -codec copy out_sound.mp4


rem fmpeg -i input.mp3 -c:a libfdk_aac output.m4a


rem ffmpeg -i dark.mp3  -i night.mp3 -i rain.mp3 -i dark.mp3 -i night.mp3  -filter_complex [0:a][1:a][2:a][3:a][4:a]concat=n=5:v=0:a=1  long_song.mp3

rem -acodec copy -avoid_negative_ts make_zero

rem ffmpeg -y -i out.mp4 -ss 00:00:00 -t 00:30:00  -an out1.mp4
rem https://github.com/mifi/lossless-cut/pull/13

rem ffmpeg -y -ss 00:00:00 -i out.mp4 -t 00:30:00  -an -vcodec copy out1.mp4
rem ffmpeg -y -ss 00:00:00 -i long_song.mp3 -i out1.mp4 -shortest -vcodec copy -c:a aac -b:a 64k out_sound1.mp4

rem ffmpeg -y -ss 00:30:00 -i out.mp4 -t 00:30:00  -an -vcodec copy out2.mp4
rem ffmpeg -y -ss 00:30:00 -i long_song.mp3 -i out2.mp4 -shortest -vcodec copy -c:a aac -b:a 64k out_sound2.mp4

rem ffmpeg -y -ss 01:00:00 -i out.mp4 -t 00:30:00  -an -vcodec copy out3.mp4
rem ffmpeg -y -ss 01:00:00 -i long_song.mp3 -i out3.mp4 -shortest -vcodec copy -c:a aac -b:a 64k out_sound3.mp4

rem ffmpeg -y -ss 01:30:00 -i out.mp4 -t 00:30:00  -an -vcodec copy out4.mp4
rem ffmpeg -y -ss 01:30:00 -i long_song.mp3 -i out4.mp4 -shortest -vcodec copy -c:a aac -b:a 64k out_sound4.mp4

rem ffmpeg -y -ss 02:00:00 -i out.mp4 -t 00:30:00  -an -vcodec copy out5.mp4
rem ffmpeg -y -ss 02:00:00 -i long_song.mp3 -i out5.mp4 -shortest -vcodec copy -c:a aac -b:a 64k out_sound5.mp4

rem ffmpeg -y -ss 02:30:00 -i out.mp4 -t 00:30:00  -an -vcodec copy out6.mp4
rem ffmpeg -y -ss 02:30:00 -i long_song.mp3 -i out6.mp4 -shortest -vcodec copy -c:a aac -b:a 64k out_sound6.mp4

rem ffmpeg -y -ss 03:00:00 -i out.mp4 -t 00:30:00  -an -vcodec copy out7.mp4
rem ffmpeg -y -ss 03:00:00 -i long_song.mp3 -i out7.mp4 -shortest -vcodec copy -c:a aac -b:a 64k out_sound7.mp4

rem ffmpeg -y -ss 03:30:00 -i out.mp4 -t 00:30:00  -an -vcodec copy out8.mp4
rem ffmpeg -y -ss 03:30:00 -i long_song.mp3 -i out8.mp4 -shortest -vcodec copy -c:a aac -b:a 64k out_sound8.mp4

rem ffmpeg -y -ss 04:00:00 -i out.mp4 -t 00:30:00  -an -vcodec copy out9.mp4
rem ffmpeg -y -ss 04:00:00 -i long_song.mp3 -i out9.mp4 -shortest -vcodec copy -c:a aac -b:a 64k out_sound9.mp4

rem ffmpeg -y -ss 04:30:00 -i out.mp4 -t 00:25:52  -an -vcodec copy out10.mp4
rem ffmpeg -y -ss 04:30:00 -i long_song.mp3 -i out10.mp4 -shortest -vcodec copy -c:a aac -b:a 64k out_sound10.mp4


rem ffmpeg -y -ss 00:41:11 -i relax.mp3 -i out.mp4 -shortest -vcodec copy -c:a aac -b:a 64k out_sound.mp4

rem ffmpeg -i out_sound.mp4 -filter_complex "afade=d=1.5, areverse, afade=d=1.5, areverse" -vcodec copy out_sound_fade.mp4


rem ffmpeg -i lie.mp3  -i long_song.mp3 -filter_complex [0:a][1:a]concat=n=2:v=0:a=1  long_song_lie.mp3

rem ffmpeg -y -ss 00:00:00 -i out.mp4 -t 01:00:00  -an -vcodec copy out1.mp4
rem ffmpeg -y -ss 00:00:00 -i long_song_lie.mp3 -i out1.mp4 -shortest -vcodec copy -c:a aac -b:a 64k out_sound1.mp4

rem ffmpeg -y -ss 01:00:00 -i out.mp4 -t 01:00:00  -an -vcodec copy out3.mp4
rem ffmpeg -y -ss 01:00:00 -i long_song_lie.mp3 -i out3.mp4 -shortest -vcodec copy -c:a aac -b:a 64k out_sound2.mp4

rem ffmpeg -y -ss 02:00:00 -i out.mp4 -t 01:00:00  -an -vcodec copy out5.mp4
rem ffmpeg -y -ss 02:00:00 -i long_song_lie.mp3 -i out5.mp4 -shortest -vcodec copy -c:a aac -b:a 64k out_sound3.mp4

rem ffmpeg -y -ss 03:00:00 -i out.mp4 -t 00:35:54  -an -vcodec copy out5.mp4
rem ffmpeg -y -ss 03:00:00 -i long_song_lie.mp3 -i out5.mp4 -shortest -vcodec copy -c:a aac -b:a 64k out_sound4.mp4

rem ffmpeg -y -ss 00:22:22 -i whale.mp3 -i out.mp4 -shortest -vcodec copy -c:a aac -b:a 64k out_sound.mp4
rem ffmpeg -i out_sound.mp4 -filter_complex "afade=d=1.5, areverse, afade=d=1.5, areverse" -vcodec copy out_sound_fade.mp4

rem ffmpeg -y -ss 00:00:00 -i out.mp4 -t 00:48:00  -an -vcodec copy out1.mp4
rem ffmpeg -y -ss 02:15:00 -i long_song_lie.mp3 -i out1.mp4 -shortest -vcodec copy -c:a aac -b:a 64k out_sound1.mp4

rem ffmpeg -y -ss 00:00:00 -i out.mp4 -t 01:03:00  -an -vcodec copy out1.mp4
rem ffmpeg -y -ss 00:00:00 -i long_song_lie.mp3 -i out1.mp4 -shortest -vcodec copy -c:a aac -b:a 64k out_sound1.mp4

rem ffmpeg -y -ss 01:03:00 -i out.mp4 -t 01:03:47  -an -vcodec copy out2.mp4
rem ffmpeg -y -ss 01:03:00 -i long_song_lie.mp3 -i out2.mp4 -shortest -vcodec copy -c:a aac -b:a 64k out_sound2.mp4

rem ffmpeg -y -ss 02:00:00 -i long_song_lie.mp3 -i out.mp4 -shortest -vcodec copy -c:a aac -b:a 64k out_sound3.mp4

rem ffmpeg -y -ss 01:00:00 -i long_song_lie.mp3 -i out1.mp4 -shortest -vcodec copy -c:a aac -b:a 64k out_sound1.mp4
rem ffmpeg -y -ss 02:00:00 -i long_song_lie.mp3 -i out2.mp4 -shortest -vcodec copy -c:a aac -b:a 64k out_sound2.mp4

rem ffmpeg -y -ss 00:00:00 -i out.mp4 -t 00:29:42  -an -vcodec copy out1.mp4
rem ffmpeg -y -ss 00:00:00 -i rain.mp3 -i out.mp4 -t 00:29:42 -shortest -vcodec copy -c:a aac -b:a 64k -filter_complex "afade=d=1.5, areverse, afade=d=1.5, areverse" out_sound1.mp4

rem ffmpeg -i out_sound1.mp4 -filter:v "crop=1920:960:0:80" -c:a copy out_sound_cut.mp4

rem ffmpeg -y -i out_sound_cut.mp4 -an -vcodec copy out_cut.mp4

rem ffmpeg -y -i mad.webm -i out1.mp4 -vcodec copy -c:a aac -b:a 128k out1_sound.mp4
rem ffmpeg -y -i mad.webm -i out2.mp4 -vcodec copy -c:a aac -b:a 128k out2_sound.mp4


rem ffmpeg -safe 0 -f concat -i list.txt -c copy long.mp4

rem ffmpeg -i out.mp4 -i mad.webm -shortest -strict -2 -codec copy out_sound.mp4

rem echo file 'out1.mp4' > list.txt
rem echo file 'out2.mp4' >> list.txt

rem ffmpeg -safe 0 -f concat -i list.txt -c copy rutte.mp4
rem ffmpeg -i rutte.mp4 -i pacman.mp3 -shortest -codec copy rutte_sound.mp4

rem ffmpeg -y -ss 00:00:00 -i out.mp4 -t 00:13:00  -an -vcodec copy out1.mp4
rem ffmpeg -y -i duivel.webm -i out.mp4 -shortest -vcodec copy -c:a aac -b:a 128k -filter_complex "afade=d=0.0, areverse, afade=d=4.5, areverse" out_sound.mp4


rem ffmpeg -y -ss 00:00:00 -i out.mp4 -t 00:15:00  -an -vcodec copy out1.mp4
rem ffmpeg -y -ss 00:00:00 -i megamix.webm -i out1.mp4 -shortest -vcodec copy -c:a aac -b:a 96k out_sound1.mp4

rem ffmpeg -y -ss 00:15:00 -i out.mp4 -t 00:15:00  -an -vcodec copy out2.mp4
rem ffmpeg -y -ss 01:00:00 -i megamix.webm -i out2.mp4 -shortest -vcodec copy -c:a aac -b:a 96k out_sound2.mp4

rem ffmpeg -y -ss 00:30:00 -i out.mp4 -t 00:15:00  -an -vcodec copy out3.mp4
rem ffmpeg -y -ss 00:00:00 -i sick.webm -i out.mp4 -shortest -vcodec copy -c:a aac -b:a 96k -filter_complex "afade=d=4.5, areverse, afade=d=4.5, areverse" out_sound.mp4


rem ffmpeg -y -ss 00:00:00 -i out.mp4 -t 00:01:28  -vcodec copy -acodec copy out1.mp4
rem ffmpeg -y -ss 00:00:00 -i sick.webm -i out1.mp4 -shortest -vcodec copy -c:a aac -b:a 96k -filter_complex "afade=d=4.5, areverse, afade=d=4.5, areverse" out_sound.mp4

rem ffmpeg -i klaasvaakmeniet.mp4 klaas.mp3
rem ffmpeg -i out.mp4 -itsoffset 0.2 -i klaas.mp3 -map 0:v -map 1:a -shortest -vcodec copy -c:a aac -b:a 96k klaas.mp4

rem fmpeg.exe -i "movie.mp4" -itsoffset 3.84 -i "movie.mp4" -map 0:v -map 1:a -c copy "movie-audio-delayed.mp4"

rem ffmpeg -y -ss 01:28:42 -i megamix.webm -i out.mp4 -shortest -vcodec copy -c:a aac -b:a 96k -filter_complex "afade=d=1.5, areverse, afade=d=2.5, areverse" out_sound.mp4

rem -vf "crop=w:h:x:y"
rem ffmpeg -i out.mp4 -filter:v "crop=1800:1080:60:0" -c:a copy out_cut.mp4

rem ffmpeg -y -ss 00:10:42 -i jazz.webm -i out.mp4 -shortest -vcodec copy -c:a aac -b:a 96k out_sound.mp4
rem ffmpeg -y -ss 00:20:42 -i jazz.webm -i out2.mp4 -shortest -vcodec copy -c:a aac -b:a 96k out2_sound.mp4

rem ffmpeg -y -ss 00:00:00 -i out.mp4 -t 00:20:00  -an -vcodec copy out1.mp4
rem ffmpeg -y -ss 00:00:00 -i jazz.webm -i out1.mp4 -shortest -vcodec copy -c:a aac -b:a 96k out_sound1.mp4

rem ffmpeg -y -ss 00:20:00 -i out.mp4 -t 00:21:09  -an -vcodec copy out2.mp4
rem ffmpeg -y -ss 00:20:00 -i jazz.webm -i out2.mp4 -shortest -vcodec copy -c:a aac -b:a 96k out_sound2.mp4

rem ffmpeg -y -ss 00:20:00 -i megamix.webm -i out.mp4 -shortest -vcodec copy -c:a aac -b:a 96k -filter_complex "afade=d=1.5, areverse, afade=d=2.5, areverse" out_sound.mp4

rem ffmpeg -y -ss 00:26:43 -i megamix.webm -i out.mp4 -shortest -vcodec copy -c:a aac -b:a 96k out_sound.mp4

rem ffmpeg -y -ss 00:33:56 -i summer.webm -i out.mp4 -shortest -vcodec copy -c:a aac -b:a 96k out_sound2.mp4

rem ffmpeg -i lie.mp3 -i megamix.webm -filter_complex [0:a][1:a]concat=n=2:v=0:a=1 lie_megamix.mp3

rem ffmpeg -y -ss 00:00:00 -i megamix.webm -i out.mp4 -shortest -vcodec copy -c:a aac -b:a 96k out_sound.mp4


rem ffmpeg -y -ss 00:10:00 -i jazz.webm -i out1.mp4 -shortest -vcodec copy -c:a aac -b:a 96k out_sound1.mp4
rem ffmpeg -y -ss 00:20:00 -i jazz.webm -i out2.mp4 -shortest -vcodec copy -c:a aac -b:a 96k out_sound2.mp4
rem ffmpeg -y -ss 00:30:00 -i jazz.webm -i out3.mp4 -shortest -vcodec copy -c:a aac -b:a 96k out_sound3.mp4
rem ffmpeg -y -ss 00:40:00 -i jazz.webm -i out4.mp4 -shortest -vcodec copy -c:a aac -b:a 96k out_sound4.mp4
rem ffmpeg -y -ss 00:00:00 -i relax.mp3 -i out5.mp4 -shortest -vcodec copy -c:a aac -b:a 96k out_sound5.mp4

rem ffmpeg -y -ss 00:00:00 -i summer.webm -i out6.mp4 -shortest -vcodec copy -c:a aac -b:a 96k out_sound6.mp4
rem ffmpeg -i 2.m4a -i 1.webm -filter_complex [0:a][1:a]concat=n=2:v=0:a=1 c1.mp3
rem ffmpeg -i c1.mp3 -i 3.webm -filter_complex [0:a][1:a]concat=n=2:v=0:a=1 c2.mp3
rem ffmpeg -i 1.webm -i c2.mp3 -filter_complex [0:a][1:a]concat=n=2:v=0:a=1 c3.mp3
rem ffmpeg -i c3.mp3 -i 3.webm -filter_complex [0:a][1:a]concat=n=2:v=0:a=1 c_final.mp3

rem ffmpeg -y -ss 00:00:00 -i jazz.webm -i out.mp4 -shortest -vcodec copy -c:a aac -b:a 96k out_jazz.mp4

rem ffmpeg -i earth.mp4 -ss 00:30:00 -t 00:01:20  -vcodec copy -acodec copy e.mp4

rem ffmpeg -y -i medley.webm -i out.mp4 -shortest -vcodec copy -c:a aac -b:a 96k out_sound.mp4

rem ffmpeg -y -i out.mp4 -t 04:46:11 -vcodec copy out_cut.mp4

rem ffmpeg -i jazz.webm -i jazz.webm -filter_complex [0:a][1:a]concat=n=2:v=0:a=1 jazz2.mp3
rem ffmpeg -i jazz2.mp3 -i jazz2.mp3 -filter_complex [0:a][1:a]concat=n=2:v=0:a=1  jazz3.mp3
rem ffmpeg -i jazz3.mp3 -i jazz3.mp3 -filter_complex [0:a][1:a]concat=n=2:v=0:a=1  jazz4.mp3

rem ffmpeg -i out_cut.mp4 -i jazz4.mp3 -shortest -vcodec copy -acodec copy out_cut_jazz.mp4

rem ffmpeg -i r.3gp -c:a aac -b:a 96k r.mp4
rem ffmpeg -loop 1 -y -i pic.jpg -i r.3gp -shortest -acodec copy -vcodec libx264 r2.mp4

rem ffmpeg -ss 00:30:00 -i jazz4.mp3 -i out.mp4  -shortest -vcodec copy -acodec copy out_jazz.mp4

rem ffmpeg -y -i lie_megamix.mp3 -i output.mp4 -shortest -vcodec copy -c:a aac -b:a 96k MCA-NBT-EDIT.mp4

rem echo file 'output1566500155.mp4' > list.txt
rem echo file 'output.mp4' >> list.txt
rem echo file 'output3.mp4' >> list.txt
rem echo file 'output2.mp4' >> list.txt
rem echo file 'win.mp4' >> list.txt
rem echo file 'win.mp4' >> list.txt

rem ffmpeg -safe 0 -f concat -i list.txt -c:v libx264 -preset veryfast -crf 23 -an -pix_fmt yuv420p win.mp4
rem ffmpeg -i jaws.mkv -i jaws.mkv -filter_complex [0:a][1:a]concat=n=2:v=0:a=1 jaws2.mp3

rem ffmpeg -y -i jaws2.mp3 -i output1566833952.mp4 -shortest -vcodec copy -c:a aac -b:a 96k MCA-NBT-EDIT.mp4


rem echo file 'output.mp4' > list.txt
rem echo file 'output1566848022.mp4' > list.txt
rem echo file 'output1566848230.mp4' >> list.txt
rem rem echo file 'output1566848525.mp4' >> list.txt
rem echo file 'output1566848818.mp4' >> list.txt
rem echo file 'output12.mp4' >> list.txt
rem echo file 'output1566852097.mp4' >> list.txt
rem echo file 'output12 (2).mp4' >> list.txt
rem echo file 'output1566853700.mp4' >> list.txt
rem echo file 'output12 (3).mp4' >> list.txt
rem echo file 'output12 (4).mp4' >> list.txt
rem echo file 'output1566859565.mp4' >> list.txt
rem echo file 'output12 (5).mp4' >> list.txt

rem ffmpeg -i world.webm world.mp3
rem ffmpeg -i world.mp3 -i 2019_08_28_17_13_54.mp4 -shortest -c:a aac -b:a 96k -c:v libx264 -preset veryfast -crf 23 -pix_fmt yuv420p win2.mp4

rem ffmpeg -i tiesto.opus tiesto.mp3
rem ffmpeg -i tiesto.mp3 -i 2019_08_28_20_14_10.mp4 -t 00:01:25 -shortest -c:a aac -b:a 96k -c:v libx264 -preset veryfast -crf 23 -pix_fmt yuv420p fb.mp4
rem ffmpeg -i output1544936155.mp4 -ss 00:00:00 -t 00:34:00  -c copy out11.mp4

rem ffmpeg -i trance.opus trance.mp3
rem ffmpeg -y -ss 00:03:00 -i trance.mp3 -i 2019_08_29_20_13_02.mp4 -shortest -c:a aac -b:a 96k -vf scale=1920:1080:-1 -c:v libx264 -preset veryfast -crf 23 -pix_fmt yuv420p 360.mp4

rem ffmpeg -y -ss 00:13:00 -i trance.mp3 -i 2019_09_01_18_26_06.mp4 -shortest -c:a aac -b:a 96k  -c:v libx264 -preset veryfast -crf 23 -pix_fmt yuv420p out.mp4



rem ffmpeg -y -ss 00:00:05 -i 2019_09_05_02_11_29.mp4 -t 00:01:05 -vcodec copy part1.mp4
rem ffmpeg -y -ss 00:04:00 -i 2019_09_05_02_11_29.mp4 -vcodec copy part2.mp4
rem echo file 'part1.mp4' > list.txt
rem echo file 'part2.mp4' >> list.txt
rem ffmpeg -y -safe 0 -f concat -i list.txt -c:v libx264 -preset veryfast -crf 23 -an -pix_fmt yuv420p tot.mp4
rem ffmpeg -ss 00:20:00 -i trance.mp3 -i tot.mp4 -shortest -vcodec copy -acodec copy tot_sound.mp4
rem ffmpeg -y -i 2019_09_06_03_59_28.mp4 -an -c:v libx264 -preset veryfast -crf 23 -pix_fmt yuv420p demo1.mp4

rem echo file '2019_09_11_18_24_43.mp4' > list.txt
rem echo file '2019_09_11_17_50_17.mp4' >> list.txt
rem echo file '2019_09_11_17_55_53.mp4' >> list.txt
rem echo file '2019_09_11_18_02_59.mp4' >> list.txt
rem echo file '2019_09_11_18_18_35.mp4' >> list.txt
rem ffmpeg -safe 0 -f concat -i list.txt -c:v libx264 -preset veryfast -crf 23 -an -pix_fmt yuv420p 1.12.2.mp4

rem ffmpeg -y -ss 00:19:00 -i trance.mp3 -i 2019_09_12_02_09_25.mp4 -shortest -c:a aac -b:a 96k -c:v libx264 -preset veryfast -crf 23 -pix_fmt yuv420p out.mp4


rem ffmpeg -y -ss 00:23:00 -i trance.mp3 -i 2019_09_23_23_35_24.mp4 -shortest -c:a aac -b:a 96k -c:v h264_nvenc -preset slow -cq 10 -bf 2 -g 150 output.mp4

rem -hwaccel cuvid -c:v h264_cuvid


rem ffmpeg -y -ss 00:23:00 -i trance.mp3 -i 2019_09_23_23_35_24.mp4 -shortest -c:a aac -b:a 96k -c:v libx264 -preset veryfast -crf 23 -pix_fmt yuv420p out.mp4

rem ffmpeg -i out.mp4 -vf mpdecimate,setpts=N/FRAME_RATE/TB -an -c:v libx264 -preset veryfast -crf 23 -pix_fmt yuv420p out_removed.mp4

rem ffmpeg -i out.mp4 -vf mpdecimate out2.mp4

rem ffmpeg -y -ss 00:29:00 -i trance.mp3 -i out_removed.mp4 -shortest -c:a aac -b:a 96k -vcodec copy out3.mp4

rem ffmpeg -y -ss 00:14:00 -i trance.mp3 -i 2019_09_24_11_26_59.mp4 -shortest -c:a aac -b:a 96k -c:v libx264 -preset veryfast -crf 23 -pix_fmt yuv420p out.mp4

rem ffmpeg -y -ss 00:23:00 -i trance.mp3 -i 2019_09_25_00_34_01.mp4 -shortest -c:a aac -b:a 96k -c:v libx264 -preset veryfast -crf 23 -pix_fmt yuv420p out_360_2.mp4



rem ffmpeg -y -hwaccel cuvid -c:v h264_cuvid -i 2019_09_25_22_48_43.mp4 -vcodec h264_nvenc -preset slow out.mp4
rem ffmpeg -y -hwaccel cuvid -c:v h264_cuvid -i 2019_09_25_22_48_43.mp4 -vcodec h264_nvenc -b:v 5M out.mp4
rem ffmpeg -y -i 2019_09_25_22_48_43.mp4 -vcodec h264_nvenc -b:v 5M out.mp4
rem ffmpeg -y -i 2019_09_25_22_48_43.mp4 -c:v h264_nvenc -profile:v high444p -pixel_format yuv444p -preset default out.mp4
rem ffmpeg -y -i 2019_09_25_22_48_43.mp4 -c:v h264_nvenc -profile:v high444p -pixel_format yuv444p -preset slow -cq 10 -bf 2 -g 150 out.mp4
rem ffmpeg -y -i 2019_09_25_22_48_43.mp4 -vcodec h264_nvenc -preset slow -cq 10 -bf 2 -g 150 -b:v 5M out.mp4
rem ffmpeg -y -i 2019_09_25_22_48_43.mp4 -vcodec h264_nvenc -preset slow -cq 10 -bf 2 -g 150 out.mp4

rem ffmpeg -y -i 2019_09_25_22_48_43.mp4 -c:v h264_nvenc -profile:v high -pixel_format nv12 -b:v 9000k -preset slow -rc vbr_hq -rc-lookahead 32 out3.mp4

rem ffmpeg -y -i 2019_09_25_22_48_43.mp4 -c:v libx264 -an -preset veryfast -crf 23 -pix_fmt yuv420p out4.mp4

rem ffmpeg -y -i 2019_09_25_22_48_43.mp4 -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 9000k -preset slow -rc vbr_hq -rc-lookahead 32 out3.mp4


rem ffmpeg -y -ss 00:14:00 -i trance.mp3 -i 2019_09_25_22_48_43.mp4 -shortest -c:v h264_nvenc -profile:v high -pixel_format nv12 -b:v 8000k -preset slow -bf:v 2 -rc vbr_hq -rc-lookahead 32 -c:a aac -b:a 384k -movflags +faststart out6.mp4

rem ffmpeg -y -ss 00:18:00 -i trance.mp3 -i 2019_09_29_03_31_54.mp4_fixed.mp4 -shortest -c:v h264_nvenc -profile:v high -pixel_format nv12 -b:v 8000k -preset slow -bf:v 2 -rc vbr_hq -rc-lookahead 32 -movflags +faststart out.mp4

rem ffmpeg -y -ss 00:18:00 -i trance.mp3 -i 2019_09_29_03_31_54.mp4_fixed.mp4 -codec copy out.mp4

rem echo file '2019_09_29_00_53_46.mp4' > list.txt
rem echo file '2019_09_29_00_53_46.mp4' >> list.txt
rem echo file '2019_09_29_00_53_46.mp4' >> list.txt
rem echo file '2019_09_29_00_53_46.mp4' >> list.txt
rem echo file '2019_09_29_00_53_46.mp4' >> list.txt
rem echo file '2019_09_29_00_53_46.mp4' >> list.txt
rem echo file '2019_09_29_00_53_46.mp4' >> list.txt
rem echo file '2019_09_29_00_53_46.mp4' >> list.txt
rem echo file '2019_09_29_00_53_46.mp4' >> list.txt
rem echo file '2019_09_29_00_53_46.mp4' >> list.txt
rem echo file '2019_09_29_00_53_46.mp4' >> list.txt

rem ffmpeg -safe 0 -f concat -i list.txt -c copy win2.mp4

rem ffmpeg -y -ss 00:18:00 -i trance.mp3 -i 2019_09_29_03_31_54.mp4_fixed.mp4 -shortest -codec copy out.mp4
rem ffmpeg -y -ss 00:18:00 -i trance.mp3 -i 2019_09_29_03_31_54.mp4_fixed.mp4 -shortest -c:v h264_nvenc -profile:v high -pixel_format nv12 -b:v 8000k -preset slow -bf:v 2 -rc vbr_hq -rc-lookahead 32 -movflags +faststart out2.mp4

rem ffmpeg -hwaccel cuvid -c:v h264_cuvid -i "Minecraft 1.14.4 29-9-2019 23_06_56.mp4" -filter:v fps=fps=60 -c:v h264_nvenc -profile:v high -pixel_format nv12 -b:v 8000k -preset slow -bf:v 2 -rc vbr_hq -rc-lookahead 32 -movflags +faststart out60.mp4
rem ffmpeg -hwaccel cuvid -c:v h264_cuvid -i "Minecraft 1.14.4 29-9-2019 23_06_56.mp4" -r 60 -c:v h264_nvenc -profile:v high -pixel_format nv12 -b:v 8000k -preset slow -bf:v 2 -rc vbr_hq -rc-lookahead 32 -movflags +faststart out60.mp4

rem ffmpeg -y -hwaccel cuvid -c:v h264_cuvid -i "Minecraft 1.14.4 29-9-2019 23_06_56.mp4" -c copy -f image2pipe - | ffmpeg -f image2pipe -framerate 60 -i - -c copy out60.mp4

rem ffmpeg -y -i "Minecraft 1.14.4 29-9-2019 23_06_56.mp4" -c copy -f image2pipe - | ffmpeg -f image2pipe -framerate 60 -i - -an -c copy out60.mp4

rem ffmpeg -y -i "Minecraft 1.14.4 29-9-2019 23_06_56.mp4" -c copy -f image2pipe -
rem FFMPEG="ffmpeg -hide_banner -f rawvideo -vcodec rawvideo -pix_fmt rgb24 -s 1920x1080 -r 60 -i - -an -vcodec h264_nvenc -c:v libx264 -preset veryfast -crf 23 -c:a copy -pix_fmt yuv420p ../record/output%d.mp4"

rem ffmpeg -i "Minecraft 1.14.4 29-9-2019 23_06_56.mp4" -c copy frames%%d.png
rem ffmpeg -y -i frames%%d.tga -framerate 60 -c copy out60.mp4

rem .\ffmpeg.exe -i "Minecraft 1.14.4 29-9-2019 23_06_56.mp4" -c copy frames%%d.png
rem .\ffmpeg.exe -framerate 60 -pattern_type glob -i "*.png" -c:v libx264 -pix_fmt yuv420p out60.mp4

rem ffmpeg -i "Minecraft 1.14.4 29-9-2019 23_06_56.mp4" -c copy frames%%d.jpg
rem ffmpeg -framerate 60 -vcodec mjpeg -i frames%%d.jpg Project.mp4

rem .\ffmpeg.exe -i "Minecraft 1.14.4 29-9-2019 23_06_56.mp4" -c copy frames%%d.jpg
rem .\ffmpeg.exe -r 60 -i frames%%d.jpg -c:v libx264 -pix_fmt yuv420p  out60.mp4

rem .\ffmpeg.exe -i "Minecraft 1.14.4 29-9-2019 23_06_56.mp4" -c copy frames%%d.png
rem .\ffmpeg.exe -r 60 -vcodec mjpeg -i frames%%d.png -c:v libx264 -pix_fmt yuv420p  out60.mp4

rem ffmpeg -i frames%%d.jpg -c:v libx264 -vf fps=60 -pix_fmt yuv420p out60.mp4

rem ffmpeg -r 1/5 -start_number 0 -i C:\myimages\img%03d.png -c:v libx264 -r 30 -pix_fmt yuv420p out.mp4

rem ffmpeg -i "Minecraft 1.14.4 29-9-2019 23_06_56.mp4" frames%%d.jpg
rem ffmpeg -i frames%%d.jpg -c:v libx264 -vf fps=60 -pix_fmt yuv420p out60.mp4


rem ffmpeg -i "Minecraft 1.14.4 29-9-2019 23_06_56.mp4" frames%%d.png
rem ffmpeg -y -r 60 -i frames%%d.png -an -c:v h264_nvenc -profile:v high -pixel_format nv12 -b:v 10000k -preset slow -bf:v 2 -rc vbr_hq -rc-lookahead 32 -movflags +faststart out60.mp4

rem ffmpeg -y -i "Minecraft 1.14.4 29-9-2019 23_06_56.mp4" -f image2pipe - | ffmpeg -y -f image2pipe -framerate 60 -i - -an -c:v h264_nvenc -profile:v high -pixel_format nv12 -b:v 10000k -preset slow -bf:v 2 -rc vbr_hq -rc-lookahead 32 -movflags +faststart out60.mp4
rem ffmpeg -y -i "Minecraft 1.14.4 29-9-2019 23_06_56.mp4" -f image2pipe - | ffmpeg -y -f image2pipe -framerate 60 -i - -an -preset veryfast -c:v libx264 -r 60 -pix_fmt yuv420p out.mp4

rem ffmpeg -i "Minecraft 1.14.4 29-9-2019 23_06_56.mp4" frames%%d.png
rem ffmpeg -y -i "Minecraft 1.14.4 29-9-2019 23_06_56.mp4" -f image2pipe - | ffmpeg -y -f image2pipe -framerate 60 -i - -an -c:v h264_nvenc -profile:v high -pixel_format nv12 -b:v 10000k -preset slow -bf:v 2 -rc vbr_hq -rc-lookahead 32 -movflags +faststart out60.mp4


rem ffmpeg -y -i "Minecraft 1.14.4 29-9-2019 23_06_56.mp4" -f image2pipe - | ffmpeg -y -threads 4 -f image2pipe -framerate 60 -i - -an -c:v h264_nvenc -b:v 4M -maxrate:v 5M -bufsize:v 8M -profile:v main -level:v 4.1 -rc:v vbr_hq -rc-lookahead:v 32 -spatial_aq:v 1 -aq-strength:v 15 -coder:v cabac -f mp4 "out60.mp4"

rem ffmpeg -y -i "Minecraft 1.14.4 29-9-2019 23_06_56.mp4" -f image2pipe - | ffmpeg -y -threads 4 -f image2pipe -r 60 -i - -an -c:v h264_nvenc -b:v 4M -maxrate:v 5M -bufsize:v 8M -preset slow -bf:v 2 -profile:v high -pixel_format nv12 -level:v 4.1 -rc:v vbr_hq -rc-lookahead:v 32 -spatial_aq:v 1 -aq-strength:v 15 -coder:v cabac -f mp4 "out60.mp4"


rem ffmpeg -y -vsync 0 -i "Minecraft 1.14.4 29-9-2019 23_06_56.mp4" -crf 18 -f image2pipe - | ffmpeg -y -f image2pipe -framerate 60 -i - -an -preset veryfast -c:v libx264 -pix_fmt yuv420p -crf 18 out.mp4


rem ffmpeg -y -vsync 0 -i "Minecraft 1.14.4 29-9-2019 23_06_56.mp4" -f image2pipe - | ffmpeg -y -f image2pipe -framerate 60 -i - -an -c:v h264_nvenc -profile:v high -pixel_format nv12 -b:v 10000k -preset slow -bf:v 2 -rc vbr_hq -rc-lookahead 32 -movflags +faststart -crf 0 out60.mp4

rem ffmpeg -y -vsync 0 -i out60.mp4 frames_new%%d.png
rem ffmpeg -y -vsync 0 -i "Minecraft 1.14.4 29-9-2019 23_06_56.mp4" frames_source%%d.png

rem ffmpeg -y -vsync 0 -i "Minecraft 1.14.4 29-9-2019 23_06_56.mp4" -f image2pipe - | ffmpeg -y -f image2pipe -framerate 60 -i - -an -c:v h264_nvenc -profile:v high -pixel_format nv12 -b:v 10000k -preset slow -bf:v 2 -rc vbr_hq -rc-lookahead 32 -movflags +faststart out60.mp4

rem ffmpeg -y -vsync 0 -i "Minecraft 1.14.4 29-9-2019 23_06_56.mp4" -f image2pipe - | ffmpeg -y -f image2pipe -r 60 -i - -an -c:v h264_nvenc -preset slow -b:v 10000k -bufsize 20000k -profile:v high -bf 3 -b_ref_mode 2 -temporal-aq 1 -rc-lookahead 20 -vsync 0 out60.mp4

rem ffmpeg -y -vsync 0 -i "Minecraft 1.14.4 29-9-2019 23_06_56.mp4" -f image2pipe - | ffmpeg -y -f image2pipe -framerate 60 -i - -an -c:v h264_nvenc -profile:v high -pixel_format nv12 -b:v 10000k -preset slow -bf:v 3 -rc vbr_hq -rc-lookahead 32 -movflags +faststart out60.mp4

rem ffmpeg -y -vsync 0 -i "Minecraft 1.14.4 29-9-2019 23_06_56.mp4" -f image2pipe - | ffmpeg -y -f image2pipe -framerate 60 -i - -an -preset veryfast -c:v libx264 -pix_fmt yuv420p -crf 0 out60.mp4
rem ffmpeg -y -vsync 0 -i "Minecraft 1.14.4 29-9-2019 23_06_56.mp4" -f rawvideo -vcodec rawvideo -pix_fmt rgb24  -s 1920x1080 - | ffmpeg -y -f rawvideo -vcodec rawvideo -pix_fmt rgb24  -s 1920x1080 -framerate 60 -i - -an -preset veryfast -c:v libx264 -pix_fmt yuv420p -crf 23 out60.mp4

rem ffmpeg -y -vsync 0 -i "Minecraft 1.14.4 29-9-2019 23_06_56.mp4" -f rawvideo -vcodec rawvideo -pix_fmt rgb24 - | ffmpeg -y -f rawvideo -vcodec rawvideo -pix_fmt rgb24  -s 1920x1080 -framerate 60 -i - -an -preset veryfast -c:v libx264 -pix_fmt yuv420p -crf 23 out60.mp4

rem ffmpeg -y -vsync 0 -i out60.mp4 -vf "select=gte(n\,200)" -vframes 1 frames_new200.png
rem ffmpeg -y -vsync 0 -i "Minecraft 1.14.4 29-9-2019 23_06_56.mp4" -vf "select=gte(n\,200)" -vframes 1 frames_org200.png

rem ffmpeg -y -ss 00:33:00 -i trance.mp3 -ss 00:00:38 -i test1b.mp4 -shortest -c:a aac -b:a 96k -vcodec copy test1c.mp4

rem ffmmpeg -y -framerate 60 -f gdigrab -i title="Minecraft 1.14.4" -vf mpdecimate,setpts=N/FRAME_RATE/TB -s 1920x1080 -c:v h264_nvenc -profile:v high -pixel_format nv12 -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 recording.mp4

rem ffmpeg -y -ss 00:46:00 -i trance.mp3 -i recording_high_sound5_1.mp4 -shortest -c:a aac -b:a 96k -vcodec copy demo1.mp4
rem ffmpeg -y -i "The Lion King 2 - We Are One - (Instrumental 1080p)-X_Cc-llOVMY.opus" -i output1570104681.mp4 -shortest -c:a aac -b:a 96k -vcodec copy berg1.mp4
rem ffmpeg -y -i berg1.mp4 -filter_complex "afade=d=2.5, areverse, afade=d=2.5, areverse" -vcodec copy berg2.mp4

rem ffmpeg -y -ss 00:49:30 -i "trance.mp3" -i recording_high_sound5.mp4 -shortest -c:a aac -b:a 96k -vcodec copy recording_high_sound5b.mp4
rem ffmpeg -y -i recording_high_sound5b.mp4 -filter_complex "afade=d=2.5, areverse, afade=d=2.5, areverse" -vcodec copy recording_high_sound5c.mp4

rem ffmpeg -y -ss 00:23:30 -i "trance.mp3" -i 2019_10_05_00_13_29.mp4 -shortest -c:a aac -b:a 96k -vcodec copy sound.mp4
rem ffmpeg -y -i sound.mp4 -filter_complex "afade=d=2.5, areverse, afade=d=2.5, areverse" -vcodec copy fade.mp4

rem ffmpeg -y -i  fade.mp4 -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 3000k -bufsize 6000k -qp 0 -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 20 test.mp4

rem 2019_10_05_00_13_29.mp4

REM FFMPEG -y -i tot.mp4 -vf mpdecimate,setpts=N/FRAME_RATE/TB -c:v h264_nvenc -profile:v high -b:v 12000k -bufsize 24000k -pix_fmt nv12 -bf:v 2 -preset slow -rc:v vbr_hq -rc-lookahead 32 tot2.mp4

rem ffmpeg -y -ss 00:20:30 -i "trance.mp3" -i "2019_10_09_14_09_21.mp4" -shortest -c:a aac -b:a 96k -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 mc.mp4
rem ffmpeg -y -ss 00:20:30 -i "trance.mp3" -i "2019_10_09_14_09_21.mp4" -shortest -c:a aac -b:a 96k -c:v libx264 -preset veryfast -crf 23 -pix_fmt yuv420p mc.mp4
rem ffmpeg -y -i mc.mp4 -filter_complex "afade=d=2.5, areverse, afade=d=2.5, areverse" -vcodec copy final.mp4

rem ffmpeg -y -i final.mp4 -an -vcodec copy final_nosound.mp4
rem ffmpeg -y -ss 00:22:30 -i "trance.mp3" -i "final_nosound.mp4" -shortest -c:a aac -b:a 96k -vcodec copy final_sound.mp4



rem ffmpeg -y -ss 00:33:30 -i "trance.mp3" -i "2019_10_09_18_38_27.mp4" -shortest -c:a aac -b:a 96k -vcodec copy boom.mp4
rem ffmpeg -y -i boom.mp4 -filter_complex "afade=d=2.5, areverse, afade=d=2.5, areverse" -vcodec copy boom_fade.mp4

rem echo file 'output_no_sound2000.mp4' > list.txt

rem ffmpeg -safe 0 -f concat -i list.txt -c copy tot.mp4

rem ffmpeg -y -ss 00:39:00 -i "trance.mp3" -ss 00:00:15 -i "tot.mp4" -shortest -c:a aac -b:a 96k -vcodec copy tot_sound.mp4
rem ffmpeg -y -rtbufsize 1000M -i tot_sound.mp4 -filter_complex "afade=d=2.5, areverse, afade=d=2.5, areverse" -max_muxing_queue_size 1024 -vcodec copy tot_fade.mp4

rem ffmpeg -i recording_high3.mp4 -vf mpdecimate -c:a copy -vsync vfr out.mp4
rem ffmpeg -y -i "pac.webm" -i output1571485431.mp4 -c:a aac -b:a 96k -vcodec copy graypac.mp4
rem ffmpeg -y -i graypac.mp4 -filter_complex "afade=d=2.5, areverse, afade=d=2.5, areverse" -max_muxing_queue_size 1024 -vcodec copy graypac_fade.mp4

rem echo file 'output_no_sound000.mp4' > list.txt
rem echo file 'output_no_sound001.mp4' >>list.txt
rem echo file 'output_no_sound002.mp4' >>list.txt
rem echo file 'output_no_sound003.mp4' >>list.txt
rem echo file 'output_no_sound004.mp4' >>list.txt
rem echo file 'output_no_sound005.mp4' >>list.txt
rem echo file 'output_no_sound006.mp4' >>list.txt
rem echo file 'output_no_sound007.mp4' >>list.txt
rem echo file 'output_no_sound008.mp4' >>list.txt
rem echo file 'output_no_sound009.mp4' >>list.txt
rem echo file 'output_no_sound010.mp4' >>list.txt

rem ffmpeg -safe 0 -f concat -i list.txt -c copy tot.mp4
rem ffmpeg -y -ss 00:39:00 -i "trance.mp3" -i "tot.mp4" -shortest -c:a aac -b:a 96k -vcodec copy aqua1.mp4
rem ffmpeg -y -i aqua1.mp4 -filter_complex "afade=d=5.5, areverse, afade=d=5.5, areverse" -vcodec copy aqua1fade.mp4

rem ffmpeg -y -i "2.mp4" -t 00:02:56 -vcodec copy 2b.mp4


rem ffmpeg -i "output1574923524.mp4" -vcodec copy -acodec copy -movflags faststart output_video_file.mp4

rem ffmpeg -y -ss 01:11:11 -i "30.webm" -i "output1575334969.mp4" -shortest -c:a aac -b:a 96k -vcodec copy rec_sound.mp4
rem ffmpeg -y -i rec_sound.mp4 -filter_complex "afade=d=12.5, areverse, afade=d=10.5, areverse" -vcodec copy rec_sound_fade.mp4


rem ffmpeg -y -ss 00:02:03 -i "explosion.mkv" -t 00:00:10 -c:a aac -b:a 96k  boem.mkv	
REM ffmpeg -y -i "boem.mkv"    boem.wav


rem echo file 'tot4.mp4' > list.txt
rem echo file 'tot3.mp4' >> list.txt
rem ffmpeg -safe 0 -f concat -i list.txt -c copy tottot.mp4

rem recover_mp4.exe output1574818433.mp4 --analyze
rem recover_mp4.exe output1574923524.mp4 recovered.h264
rem ffmpeg.exe -r 60 -i recovered.h264 -c:v copy recovered.mp4

rem ffmpeg -y -i "boem.wav" -t -i "output1575334969.mp4" -shortest -c:a aac -b:a 96k -vcodec copy rec_sound.mp4

rem ffmpeg -y  -i boem.wav -itsoffset 00:00:05 -i output1575585096.mp4 -map 0:0 -map 1:0 -c:v copy -preset ultrafast -async 1 out.mp4

rem ffmpeg -y -i output1575585096.mp4 -itsoffset 00:00:06 -i boem.wav -map 0:0 -map 1:0 -c:v copy -shortest out.mp4

rem -vf "crop=w:h:x:y"
rem ffmpeg -i output1575761166.mp4 -filter:v "crop=1200:1080:360:0" out_cut.mp4

rem ffmpeg -y -i output1575769165.mp4 -t 00:00:54 -vcodec copy out1.mp4
rem ffmpeg -i out1.mp4 -filter:v "crop=1200:1080:360:0" out2.mp4
rem ffmpeg -y -ss 00:02:14 -i "ep.webm" -i "out2.mp4" -shortest -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 -c:a aac -b:a 96k out3.mp4
rem ffmpeg -y -i out3.mp4 -filter_complex "afade=d=3.5, areverse, afade=d=32	, areverse" -vcodec copy rec_sound_fade.mp4


rem ffmpeg -y -ss 00:55:33 -i "30.webm" -i "output1575953307.mp4" -shortest -c:a aac -b:a 96k -vcodec copy rec_sound.mp4
rem fmpeg -y -i rec_sound.mp4 -filter_complex "afade=d=12.5, areverse, afade=d=20.5, areverse" -vcodec copy rec_sound_fade.mp4

rem ffmpeg -i "Textielstad (Enschede) - Joost Prinsen (Willem Wilmink)-Vi_F9IeKMk0.mp4" enschede.mp3

rem ffmpeg -y -ss 00:00:20 -i "enschede.mp3" -i "output1578006637.mp4" -shortest -c:a aac -b:a 96k -vcodec copy rec_sound.mp4
rem ffmpeg -y -i rec_sound.mp4 -filter_complex "afade=d=5.5, areverse, afade=d=10.5, areverse" -vcodec copy rec_sound_fade.mp4


rem ffmpeg -i input.mkv -filter:v "setpts=0.5*PTS" output.mkv

rem ffmpeg -y -ss 00:02:14 -i "ep.webm" -i "recording_high3.mp4" -shortest -filter:v "setpts=0.10*PTS" -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 -c:a aac -b:a 96k out3.mp4

rem ffmpeg -y -ss 00:00:00 -i "dpa.opus" -i "output1579722659.mp4" -shortest -c:a aac -b:a 96k -vcodec copy rec_sound.mp4
rem ffmpeg -y -i rec_sound.mp4 -filter_complex "afade=d=15.5, areverse, afade=d=3	1.5, areverse" -vcodec copy rec_sound_fade.mp4

rem ffmpeg -i "http://pairing:C6E1749B7260DDE76530F6702DC5D2B11065174E@127.0.0.1:33728/proxy?sid=b161f27e&file=0&token=C6E1749B7260DDE76530F6702DC5D2B11065174E&pairing=C6E1749B7260DDE76530F6702DC5D2B11065174E&service=STREAMING"

rem ffmpeg -i "https://m.facebook.com/watch/?v=533130710634382&_rdr"
rem ffplay "https://m.facebook.com/watch/?v=533130710634382&_rdr"

rem ffplay "http://pairing:C6E1749B7260DDE76530F6702DC5D2B11065174E@127.0.0.1:33728/proxy?sid=b161f27e&file=0&token=C6E1749B7260DDE76530F6702DC5D2B11065174E&pairing=C6E1749B7260DDE76530F6702DC5D2B11065174E&service=STREAMING"



rem ffmpeg -y -ss 00:30:00 -i "trance.mp3" -i "output1580749028.mp4" -t 00:30:00 -shortest -c:a aac -b:a 96k -vcodec copy rec_sound.mp4

rem ffmpeg -ss 00:00:00 -t 00:30:00 -i "output1580749028.mp4" -vcodec copy -acodec copy out1.mp4
rem ffmpeg -ss 00:30:00 -t 00:30:00 -i "output1580749028.mp4" -vcodec copy -acodec copy out2.mp4

rem ffmpeg -y -ss 00:30:00 -i "trance.mp3" -i "out1.mp4" -shortest -c:a aac -b:a 96k -vcodec copy rec_sound.mp4
rem ffmpeg -y -i rec_sound.mp4 -filter_complex "afade=d=5.5, areverse, afade=d=5.5, areverse" -vcodec copy rec_sound_fade1.mp4

rem ffmpeg -y -ss 01:00:00 -i "trance.mp3" -i "out2.mp4" -shortest -c:a aac -b:a 96k -vcodec copy rec_sound.mp4
rem ffmpeg -y -i rec_sound.mp4 -filter_complex "afade=d=5.5, areverse, afade=d=5.5, areverse" rec_sound_fade2.mp4


rem ffmpeg -i output1580914476.mp4 -filter:v "crop=1620:1080:150:0" -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 out3.mp4

rem ffmpeg -y -ss 00:00:00 -i "lion.opus" -i "out3.mp4" -shortest -c:a aac -b:a 96k -vcodec copy rec_sound.mp4
rem ffmpeg -y -i rec_sound.mp4 -filter_complex "afade=d=2.5, areverse, afade=d=5.5, areverse" -vcodec copy rec_sound_fade2.mp4


rem ffmpeg -i output1581411117.mp4 -filter:v "crop=1120:1080:400:0" -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 out.mp4
rem ffmpeg -y -ss 00:14:00 -i "scary.webm" -i "out.mp4" -shortest -c:a aac -b:a 96k -vcodec copy out_sound.mp4
rem ffmpeg -y -i out_sound.mp4 -filter_complex "afade=d=2.5, areverse, afade=d=5.5, areverse" -vcodec copy out_sound_fade.mp4

rem ffmpeg -i output1581503924.mp4 -filter:v "crop=1920:740:0:170" -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 out.mp4
rem ffmpeg -y -ss 00:07:06 -i "scary.webm" -i "out.mp4" -shortest -c:a aac -b:a 96k -vcodec copy out_sound.mp4
rem ffmpeg -y -i out_sound.mp4 -filter_complex "afade=d=2.5, areverse, afade=d=5.5, areverse" -vcodec copy out_sound_fade.mp4


rem ffmpeg -y -ss 00:00:00 -i "jaws.webm" -i "output1582852551.mp4" -shortest -c:a aac -b:a 96k -vcodec copy out_sound.mp4
rem ffmpeg -y -i out_sound.mp4 -filter_complex "afade=d=2.5, areverse, afade=d=5.5, areverse" -vcodec copy out_sound_fade.mp4

rem echo file 'jaws.webm' > list.txt
rem echo file 'jaws.webm' >> list.txt
rem echo file 'jaws.webm' >> list.txt
rem echo file 'jaws.webm' >> list.txt

rem ffmpeg -safe 0 -f concat -i list.txt -c copy jaws_long.webm

rem ffmpeg -i jaws.webm -i jaws.webm -filter_complex [0:a][1:a]concat=n=2:v=0:a=1 jaws_long.mp3

rem ffmpeg -i jaws_long.mp3 -i jaws_long.mp3 -filter_complex [0:a][1:a]concat=n=2:v=0:a=1 jaws_long_long.mp3

rem ffmpeg -y -ss 00:00:00 -i "jaws_long.webm" -i "output1582852551.mp4" -shortest -filter_complex "afade=d=2.5, areverse, afade=d=5.5, areverse" -c:a aac -b:a 96k -vcodec copy out_sound_test.mp4

rem ffmpeg -y -ss 00:00:00 -i "jaws_long.webm"  -i output1582936285.mp4 -filter:v "crop=1400:1080:260:0" -filter:vf "scale=400:-1" -shortest -filter_complex "afade=d=2.5, areverse, afade=d=5.5, areverse" -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 out.mp4
rem ffmpeg -y -ss 00:00:00 -i "jaws_long.webm" -t 00:00:43 -i output1582936285.mp4 -shortest -filter_complex "afade=d=2.5, areverse, afade=d=5.5, areverse" -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 out.mp4
rem -vf scale=400:-1 
rem call makepalette out.mp4
rem echo file 'Maroon.webm' > list.txt
rem echo file 'Maroon.webm' >> list.txt
rem ffmpeg -safe 0 -f concat -i list.txt m.mp3

rem ffmpeg -y -ss 00:00:00 -i "m.mp3" -i output1583454925.mp4 -shortest -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 out.mp4

rem ffmpeg -y -i "output1583594055.mp4" -c:v h264_nvenc -vf scale=1920:1080:-1 -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 out.mp4

rem echo file 'output1583705687.mp4' > list.txt
rem echo file 'output1583705687.mp4' >> list.txt
rem ffmpeg -safe 0 -f concat -i list.txt -c copy m.mp4

rem ffmpeg -y -ss 00:00:00 -i "jazz.webm" -i output1583812251.mp4 -shortest -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 out.mp4
REM ffmpeg -y -ss 00:00:00 -i "jazz.webm" -t 00:00:59 -i output1583812251.mp4 -shortest -filter_complex "afade=d=2.5, areverse, afade=d=5.5, areverse" -c:a aac -b:a 96k -c:v copy out.mp4
REM makepalette out.mp4
rem ffmpeg -y -ss 00:10:00 -i "jazz.webm" -i output1583827940.mp4 -shortest -c:a aac -b:a 96k -c:v copy out.mp4
rem ffmpeg -y -ss 00:18:00 -i "jazz.webm" -i output1583834777.mp4 -shortest -c:v h264_nvenc -vf scale=1920:1080:-1 -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 -c:a aac -b:a 96k out.mp4
rem ffmpeg -y -ss 00:30:00 -i "jazz.webm" -i output1583896063.mp4 -shortest -c:v copy newyork.mp4

rem ffmpeg -y -ss 00:00:00 -i "jaws_long.webm"  -i output1583962856.mp4 -filter:v "crop=1920:680:0:200" -shortest -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 -c:a aac -b:a 96k out.mp4

rem ffmpeg -y -i out_4k.mp4 -c:v h264_nvenc -vf scale=1920:1080:-1 -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 out_1920x1080.mp4
rem ffmpeg -y -i "Pacman Graphics Minecraft World Creator.mkv" -vf scale=960:540:-1 -c:v h264_nvenc -pix_fmt yuv420p -b:v 10M -bufsize 20M  -preset slow  -rc-lookahead 32 -acodec copy MC.mkv

REM ffmpeg -y -i "Pacman Graphics Minecraft World Creator.mkv" -vcodec h264 -vf scale=960:540:-1 -b:v 1000k -acodec mp2 MC3.mp4
rem ffmpeg -y -i "Pacman Graphics Minecraft World Creator.mkv" -vcodec h264_nvenc -vf scale=960:540:-1 -b:v 1000k -acodec mp2 MC2.mp4

REM ffmpeg -y -ss 00:20:00 -i "jazz.webm" -i output1584089180.mp4 -shortest -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 -c:a aac -b:a 96k out1.mp4
REM ffmpeg -y -ss 00:20:00 -i "jazz.webm" -i output1584089180.mp4 -shortest -c:v h264_nvenc -b:v 1M -preset slow -acodec mp2 out2.mp4
REM ffmpeg -y -ss 00:20:00 -i "jazz.webm" -i output1584089180.mp4 -shortest -c:v h264_nvenc -b:v 1M -acodec mp2 out3.mp4
REM ffmpeg -y -ss 00:20:00 -i "jazz.webm" -i output1584089180.mp4 -shortest -c:a aac -b:a 96k -vcodec copy out4.mp4

rem ffmpeg -y -ss 00:24:00 -i "jazz.webm" -i output1584097377.mp4 -shortest -c:a aac -b:a 96k -vcodec copy out4.mp4

rem ffmpeg -y  -i "fam.mkv" fam.mp3
rem echo file 'fam.mp3' > list.txt
rem echo file 'fam.mp3' >> list.txt
rem echo file 'fam.mp3' >> list.txt
rem echo file 'fam.mp3' >> list.txt
rem echo file 'fam.mp3' >> list.txt
rem ffmpeg -safe 0 -f concat -i list.txt m.mp3

rem ffmpeg -y  -i "m.mp3" -i output1584655753.mp4 -shortest -c:v h264_nvenc -vf scale=1920:1080:-1 -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 -filter_complex "afade=d=2.5, areverse, afade=d=5.5, areverse" edo.mp4


REM ffmpeg -i output1584754503.mp4 -ss 00:00:00 -t 00:30:00  -vcodec copy PART01.MP4
REM ffmpeg -i output1584754503.mp4 -ss 00:30:00 -t 00:30:00  -vcodec copy PART02.MP4
REM ffmpeg -i output1584754503.mp4 -ss 01:00:00 -t 00:30:00  -vcodec copy PART03.MP4
REM ffmpeg -i output1584754503.mp4 -ss 01:30:00 -t 00:30:00  -vcodec copy PART04.MP4
REM ffmpeg -i output1584754503.mp4 -ss 02:00:00 -t 00:30:00  -vcodec copy PART05.MP4
rem ffmpeg -i output1584754503.mp4 -ss 02:30:00 -t 00:30:00  -vcodec copy PART06.MP4
rem ffmpeg -i output1584754503.mp4 -ss 03:00:00 -t 00:30:00  -vcodec copy PART07.MP4
rem ffmpeg -i output1584754503.mp4 -ss 03:30:00 -t 00:30:00  -vcodec copy PART08.MP4
rem ffmpeg -i output1584754503.mp4 -ss 04:00:00 -t 00:30:00  -vcodec copy PART09.MP4
rem ffmpeg -i output1584754503.mp4 -ss 04:30:00 -t 00:30:00  -vcodec copy PART10.MP4
rem paste leftover to next.....
REM ffmpeg -i output1584754503.mp4 -ss 05:00:00 -vcodec copy LEFTOVER.MP4

rem ffmpeg -y -i output1584798573.mp4 -filter:v "crop=1400:1080:260:0" -c:v h264_nvenc -profile:v high -pix_fmt rem yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 out.mp4
rem call makepalette out.mp4


rem echo file 'LEFTOVER.MP4' > list.txt
rem echo file 'output1584789736.mp4' >> list.txt
rem ffmpeg -safe 0 -f concat -i list.txt -c copy next.mp4

rem ffmpeg -i next.mp4 -ss 00:00:00 -t 00:30:00  -c copy PART11.MP4
rem ffmpeg -i next.mp4 -ss 00:30:00 -t 00:30:00  -c copy PART12.MP4
rem ffmpeg -i next.mp4 -ss 01:00:00 -t 00:30:00  -c copy PART13.MP4
rem ffmpeg -i next.mp4 -ss 01:30:00 -t 00:30:00  -c copy PART14.MP4
rem ffmpeg -i next.mp4 -ss 02:00:00 -t 00:30:00  -c copy PART15.MP4
rem ffmpeg -i next.mp4 -ss 02:30:00 -t 00:30:00  -c copy PART16.MP4
rem ffmpeg -i next.mp4 -ss 03:00:00 -t 00:30:00  -c copy PART17.MP4
rem ffmpeg -i next.mp4 -ss 03:30:00 -t 00:30:00  -c copy PART18.MP4


rem ffmpeg -y -i "amsterdam_mellow.webm" amsterdam_mellow.mp3
rem pause

rem ffmpeg -y -i "amsterdam_mellow.mp3" -i output1585088499.mp4 -shortest -c copy amsterdam.mp4

rem ffmpeg -y -i output1585136728.mp4 -c:v h264_nvenc -vf scale=1920:1080:-1 -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 1k.mp4

rem ffmpeg -y  -ss 00:10:00 -i "jazz.mp3" -i output1585530672.mp4 -shortest  -c copy amsterdam.mp4

rem ffmpeg -y -i "jazz.webm" jazz.mp3
rem ffmpeg -y  -ss 00:27:00 -i "jazz.mp3" -i output1586073841.mp4 -shortest  -c copy denhaag3.mp4



rem ffmpeg -y -i output1586825320.mp4 -filter:v "crop=1920:760:0:80" -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 out1.mp4

rem ffmpeg -y -i output1586854431.mp4 -filter:v "crop=1920:760:0:80,setpts=1.2*PTS,fps=60" -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 mst.mp4
rem ffmpeg -y -ss 00:00:02 -i "mst.mp4" -t 00:02:16 -c copy mst_short.mp4
rem ffmpeg -y -ss 00:00:02  -i "mst_short.mp4" -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 mst_short2.mp4

rem ffmpeg -y -i twitter.mp4 -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -vf scale=1920:1080:-1 -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 twit1920x1080.mp4

rem ffmpeg -y -i output1586978215.mp4 -t 00:02:32 -vcodec copy mst1.mp4

REM ffmpeg -y -i mst1.mp4 -filter:v "crop=1920:1000:0:0,setpts=0.68*PTS,fps=30" -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 mst.mp4

rem output1586978215.mp4

rem ffmpeg -i sv.en.mp4 -i mst1.mp4 -filter_complex "[1]scale=iw/4:ih/4 [pip]; [0][pip] overlay=main_w-overlay_w-10:main_h-overlay_h-10[v];" -map "[v]"  -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 -acodec aac outstream.mp4

rem ffmpeg -i local.webm -i remote.webm -filter_complex "[1]scale=iw/4:ih/4 [pip]; [0][pip] overlay=main_w-overlay_w-10:main_h-overlay_h-10" -ar 44100 -vcodec h264 -acodec aac -strict experimental outstream.mp4

rem ffmpeg -i sv.en.mp4 -i mst1.mp4 -filter_complex "[1]scale=iw/4:ih/4 [pip]; [0][pip] overlay=main_w-overlay_w-10:main_h-overlay_h-10[v];[0:a][1:a]amerge[a]" -map "[v]" -map "[a]" -ac 2 -ar 44100 -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 -acodec aac outstream.mp4

rem ffmpeg -i mst.mp4 -i sv.en.mp4 -filter_complex "[1]scale=iw/2:ih/2 [pip]; [0][pip] overlay=main_w-overlay_w-10:main_h-overlay_h-10" -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 -acodec aac outstream.mp4

rem e:/pacman/ffmpeg/bin/ffmpeg -y -i outstream.mp4  -t 00:01:43 -c:v copy out_cut.mp4
rem e:/pacman/ffmpeg/bin/ffmpeg -y -i Scream.mkv scream.mp3

rem e:/pacman/ffmpeg/bin/ffmpeg -y -i out_cut.mp4 -t 00:01:38 -an -c copy out_cut_nosound.mp4
rem e:/pacman/ffmpeg/bin/ffmpeg -y -i out_cut.mp4 -an -c copy out_nosound.mp4

rem echo file 'out_cut_nosound.mp4' > list.txt
rem echo file 'scream.mp3' >> list.txt

rem e:/pacman/ffmpeg/bin/ffmpeg -safe 0 -f concat -i list.txt tot_sound.mp3

rem e:/pacman/ffmpeg/bin/ffmpeg -i out_nosound.mp4 -i tot_sound.mp3 -c copy hoppa.mp4

rem e:/pacman/ffmpeg/bin/ffmpeg -f lavfi -i anullsrc=channel_layout=5.1:sample_rate=48000 -t 98 silence.mp3
rem echo file 'silence.mp3' > list.txt
rem echo file 'scream.mp3' >> list.txt
rem e:/pacman/ffmpeg/bin/ffmpeg -safe 0 -f concat -i list.txt tot_sound.mp3

rem e:/pacman/ffmpeg/bin/ffmpeg -y -i out_cut.mp4 -i tot_sound.mp3 -filter_complex [0][1]amix=inputs=2[a] -map 0:v -map [a] -c:v copy output.mp4



rem e:/pacman/ffmpeg/bin/ffmpeg -y -i out_cut.mp4 -t 00:01:38 -an out_cut_nosound.mp4
rem e:/pacman/ffmpeg/bin/ffmpeg -y -i out_cut.mp4 -itsoffset 00:01:38 -i scream.mp3 -filter_complex amix=inputs=2:duration=first:dropout_transition=2 sound.mp3

rem e:/pacman/ffmpeg/bin/ffmpeg -y -i out_cut.mp4 -i scream.mp3 -itsoffset 00:01:38 -map 0:0 -map 0:1 -map 1:0 -c:v copy -async 1 out.mp4
rem e:/pacman/ffmpeg/bin/ffmpeg -i out_cut.mp4 -i scream.mp3 -i 2.3gp -i 1.mp3 -filter_complex "[2]adelay=10000|10000[s2];[3:a][1:a][s2]amix=3[a]"  -map 0:v -map "[a]" -c:v copy result.mp4

rem e:/pacman/ffmpeg/bin/ffmpeg -i band.mp4 -t 00:00:04.2 -filter:v "crop=616:730:0:26" -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 cut.mp4

rem e:/pacman/ffmpeg/bin/ffmpeg -i output.mp4 -itsoffset 00:01:38 -i cut.mp4 -filter_complex "[1]scale=iw:ih [pip]; [0][pip] overlay=10:10" -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 outstream_end.mp4

rem ffmpeg -y -i output1587360299.mp4 -t 00:03:55 -c copy  lydia.mp4

rem ffmpeg -y  -ss 00:00:00 -i "tiesto.mp3" -i lydia.mp4 -codec copy lydia_sound.mp4


rem echo file 'output1587669639.mp4' > list.txt
rem echo file 'output1587671304.mp4' >> list.txt
rem ffmpeg -safe 0 -f concat -i list.txt -c copy tot.mp4
rem ffmpeg -y  -ss 00:00:00 -i "world.mp3" -i tot.mp4 -codec copy lydia_sound.mp4


rem ffmpeg -y -i "class.mp3" -i output1588443072.mp4 -shortest -c copy poster_lydia.mp4
rem ffmpeg -y -i "delta.webm" -i output1588622477.mp4 -c:v copy -acodec aac fake.mp4

rem ffmpeg -y -i SmallJoyousKitten-mobile.mp4 -vf scale=320:-1 frames%%d.jpg


rem d:/pacman/ffmpeg/bin/ffmpeg -i fast.mp3 -i 2020_05_17_13_34_58.mp4 -c copy hoppa.mp4


rem echo file 'tiesto.mp3' > list.txt
rem echo file 'world.mp3' >> list.txt
rem echo file 'tiesto.mp3' >> list.txt
rem echo file 'world.mp3' >> list.txt
rem echo file 'tiesto.mp3' >> list.txt
rem echo file 'world.mp3' >> list.txt

rem ffmpeg -safe 0 -f concat -i list.txt -c copy world_long.mp3
rem ffmpeg -y -i "WORLD_LONG.mp3" -i "2020_05_26_17_27_44.mp4" -shortest -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset medium -rc:v vbr_hq -rc-lookahead 32 -c:a copy mc.mp4

rem ffmpeg -y -ss 00:04:00 -i "mc.webm" -i "2020_06_22_04_52_09.mp4" -shortest -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 -acodec aac  voxel.mp4

rem ffmpeg -y -ss 00:00:00 -i "pp.mp3" -i "recording_high3.mp4" -shortest -filter:v "setpts=0.50*PTS" -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 -c:a aac -b:a 96k -framerate 30 schematic.mp4

rem echo file 'a.mp4' > list.txt
rem echo file 'b.mp4' >> list.txt
rem echo file 'c.mp4' >> list.txt

rem ffmpeg  -y -ss 00:00:00 -i "pp.mp3" -safe 0 -f concat -i list.txt -shortest -filter:v "setpts=0.50*PTS" -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 -c:a aac -b:a 96k -framerate 30 world.mp4

rem echo file 'aaa.mp4' > list.txt
rem echo file 'bbb.mp4' >> list.txt
rem ffmpeg  -y -ss 00:00:00 -i "pp.mp3" -safe 0 -f concat -i list.txt -shortest -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 -c:a aac -b:a 96k c.mp4


rem ffmpeg -i lllrecording_high3.mp4 -vf mpdecimate,setpts=N/FRAME_RATE/TB -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 -c:a aac -b:a 96k makingoff1.mp4

REM ffmpeg -i makingoff1.mp4 -t 00:10:17 -c copy -an makingoff1_cut.mp4


rem ffmpeg -i "PP.mp3" -i lllrecording_high3.mp4 -shortest -vf mpdecimate,setpts=0.25*PTS -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 -c:a aac -b:a 96k mo.mp4



rem echo file '1recording_high3.mp4' > list.txt
rem echo file 'recording_high3.mp4' >> list.txt

rem ffmpeg  -y -ss 00:00:00 -i "pp.mp3" -safe 0 -f concat -i list.txt -shortest -vf mpdecimate,setpts=0.80*PTS -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 -c:a aac -b:a 96k -framerate 30 boom.mp4

rem echo file 'a.mp4' > list.txt
rem ffmpeg  -y -safe 0 -f concat -i list.txt -vf mpdecimate,setpts=N/FRAME_RATE/TB -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 -an boom.mp4
rem ffmpeg -y  -ss 00:00:00 -i "mc.webm" -strict -2 -i boom.mp4 -shortest -c:a aac -b:a 96k -c:v copy boom_sound.mp4

rem ffmpeg -y  -ss 00:00:00 -i "venga.mp3" -i 2020_07_15_08_14_38.mp4 -shortest -c:a copy -vf setpts=0.5*PTS -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 -r 60 enschede_boom.mp4

rem ffmpeg -y  -ss 00:00:00 -i "venga.mp3" -i 2020_07_15_08_14_38.mp4 -shortest -c:a copy -vf setpts=0.5*PTS -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 -r 60 enschede_boom.mp4

rem ffmpeg -y  -ss 00:11:50 -i "venga.mp3" -i 2020_07_18_04_59_12.mp4 -shortest -c:a copy -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 enschede_boom4.mp4

REM ffmpeg -y -i enschede_boom4.mp4 -t 00:11:50 -c copy shorter.mp4

REM echo file 'pp.mp3' > list.txt
REM echo file 'pp.mp3' >> list.txt
REM ffmpeg  -y -safe 0 -f concat -i list.txt -c copy PPPP.mp3

REM echo file '2020_07_18_04_59_12.mp4' > list.txt
REM echo file '2020_07_18_00_31_41.mp4' >> list.txt
REM echo file '2020_07_21_00_09_35.mp4' >> list.txt


REM ffmpeg  -y -i pppp.mp3 -safe 0 -f concat -i list.txt -shortest -vf mpdecimate -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 long.mp4

rem ffmpeg  -y -ss 00:10:00 -i "mc.webm" -i "2020-07-21_22.15.25.mp4" -shortest -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 -c:a aac -b:a 96k 2.mp4
rem ffmpeg  -y -i "\\ROELOF-PC\get\2020-07-21_23.09.39.mp4" -t 00:45:00 -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 1.mp4

rem ffmpeg -y -i "mc.webm" mc.mp3

REM echo file 'mc.mp3' > list.txt
REM echo file 'mc.mp3' >> list.txt
REM echo file 'mc.mp3' >> list.txt
REM echo file 'mc.mp3' >> list.txt

REM ffmpeg  -y -ss 00:13:50 -i "mc_long.mp3" -i "1.mp4" -shortest -c copy 1_sound.mp4


REM echo file 'kraftwerk.mp3' > list.txt
REM echo file 'ZH0.mp3' >> list.txt
REM echo file 'ZH1.mp3' >> list.txt
REM echo file 'ZH2.mp3' >> list.txt
REM echo file 'ZH3.mp3' >> list.txt
REM echo file 'ZH4.mp3' >> list.txt
REM echo file 'ZH5.mp3' >> list.txt
REM echo file 'ZH6.mp3' >> list.txt
REM echo file 'ZH7.mp3' >> list.txt
REM echo file 'ZH8.mp3' >> list.txt
REM echo file 'ZH9.mp3' >> list.txt
REM ffmpeg  -y -safe 0 -f concat -i list.txt -c copy  NEW_long.mp3
REM ffmpeg  -y -i "new_long.mp3" -i "2020_07_23_05_27_26.mp4" -shortest -c copy 1_sound.mp4
REM ffmpeg  -y -i "mc_long.mp3" -i "2020_07_23_05_27_26.mp4" -shortest -c copy mc_sound.mp4




rem ffmpeg -y -i recording_high1.mp4 -c:a copy -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 DENHAAG1.mp4
rem ffmpeg -y -i recording_high2.mp4 -c:a copy -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 DENHAAG2.mp4
rem ffmpeg -y -i recording_high3.mp4 -c:a copy -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 DENHAAG3.mp4
rem ffmpeg -y -i recording_high4.mp4 -c:a copy -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 DENHAAG4.mp4

rem ffmpeg -y -i "2018.mp3" 2018.ogg


rem ffmpeg -y -i recording_high2.mp4 -vf mpdecimate -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 out_decimated.mp4

REM ffmpeg -y -i recording_high2.mp4 -vf mpdecimate,setpts=0.5*PTS -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 out_decimated2.mp4

REM ffmpeg -y -i recording_high2.mp4 -vf mpdecimate -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 out_decimated2.mp4


REM -vf mpdecimate,setpts=N/FRAME_RATE/TB

rem ffmpeg -y -i 2018.mp3 -filter:a "volume=0.20" 2018_soft.mp3

rem ffmpeg -y -i recording_high2.mp4 -vf mpdecimate,setpts=N/FRAME_RATE/TB -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 out_decimated2.mp4

rem ffmpeg -y -i out_decimated2.mp4 -r 60000/1001 -filter_complex "[0:v]setpts=0.5*PTS[v];[0:a]atempo=(1/0.5)[a]" -map "[v]"" -map "[a]" -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 out.mp4

rem ffmpeg -y -i out.mp4 -filter:a "volume=6.0" -codec:a libmp3lame -q:a 2 out.mp3

rem ffmpeg -y -i out.mp3 -i 2018_soft.mp3 -filter_complex "[0:0][1:0] amix=inputs=2:duration=longest" out_tot.mp3

rem ffmpeg -y -i out.mp4 -i out_tot.mp3 -map 0:v -map 1:a -c copy out_tot.mp4


REM ffmpeg -i input.mkv -r 16 -filter:v "setpts=0.25*PTS" output.mkv

REM ffmpeg -i input.mkv -filter:a "atempo=2.0" -vn out_decimated2
REM 
rem ffmpeg -y -i recording_high2.mp4 -vf mpdecimate,setpts=N/FRAME_RATE/TB -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 out_decimated2.mp4

REM ffmpeg -y -i recording_high2.mp4 -vf mpdecimate,setpts=N/FRAME_RATE/TB -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 out_decimated2.mp4


rem ffmpeg -y -i 2018.mp3 -filter:a "volume=0.15" 2018_soft.mp3

rem ffmpeg -y -i recording_high2.mp4 -filter_complex "[0:v]setpts=0.5*PTS[v];[0:a]atempo=(1/0.5)[a]" -map "[v]"" -map "[a]" -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 out.mp4

rem ffmpeg -y -i out.mp4 -filter:a "volume=3.0" -codec:a libmp3lame -q:a 2 out.mp3

rem ffmpeg -y -i out.mp3 -i 2018_soft.mp3 -filter_complex "[0:0][1:0] amix=inputs=2:duration=longest" out_tot.mp3

rem ffmpeg -y -i out.mp4 -i out_tot.mp3 -map 0:v -map 1:a -c copy out_tot.mp4

rem ffmpeg -y -i out.mp4 -i out_tot.mp3 -map 0:v -map 1:a -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 out_tot.mp4




rem -codec:a libmp3lame -q:a 2

rem ffmpeg -i alex.aiff -i 2018_soft.mp3 -filter_complex "[0:0][1:0] amix=inputs=3:duration=longest" out.mp3

rem -filter:a "volume=0.5"

rem ffmpeg -y -i out.mp4 -vf mpdecimate -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 out2.mp4

rem ffmpeg -y -i recording_high2.mp4 -filter_complex "[0:v]setpts=0.5*PTS[v];[0:a]atempo=(1/0.5)[a]" -map "[v]"" -map "[a]" -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 -r 60 out.mp4
rem ffmpeg -y -i recording_high2.mp4 -vf mpdecimate,fps=60 -filter_complex "setpts=[0:v]setpts=0.5*PTS[v];[0:a]atempo=(1/0.5)[a]" -map "[v]"" -map "[a]" -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 -r 60 out.mp4
rem setpts=N/FRAME_RATE/TB
rem -i "INPUT" -filter_complex "[0:v]setpts=1.1*PTS[v];[0:a]atempo=(1/1.1)[a]" -map "[v]"" -map "[a]" "OUTPUT"

rem ffmpeg -i lie.mp3 -i megamix.webm -filter_complex [0:a][1:a]concat=n=2:v=0:a=1 lie_megamix.mp3
rem ffmpeg -i lllrecording_high3.mp4 -vf mpdecimate,setpts=N/FRAME_RATE/TB -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 -c:a aac -b:a 96k makingoff1.mp4

rem ffmpeg -y -i recording_high2.mp4 -vf mpdecimate,setpts=0.5*PTS,fps=60 -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 out.mp4

rem ffmpeg -i recording_high2.mp4 -map 0:v -map 1:a -i 2018.mp3 -filter_complex "[0:0][1:0] amix=inputs=2" -vf mpdecimate,setpts=0.5*PTS,fps=60 -map 0:v -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 out.mp4

rem ffmpeg -i recording_high2.mp4 -i 2018.mp3 -filter_complex "[0:0][1:0] amix=inputs=2:duration=longest" -map 0:v -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 out.mp3
rem ffmpeg -i alex.aiff -i fred.aiff -i whisper.aiff -filter_complex "[0:0][1:0] amix=inputs=3:duration=longest" out.mp3

rem setpts=1.2*PTS,fps=60
rem -vf mpdecimate,setpts=0.5*PTS,fps=60
rem -map 0:v -map 1:a

rem echo file 'vd.mp3' > list.txt
rem echo file 'konijn.mp3' >> list.txt
rem echo file 'smurf.mp3' >> list.txt
rem echo file 'vd.mp3' >> list.txt
rem ffmpeg  -y -safe 0 -f concat -i list.txt -c copy long.mp3
rem ffmpeg -y -i long.mp3 -i 2020_08_07_21_02_53.mp4 -shortest -c copy mixed.mp4



rem ffmpeg -i output000.mp4 -ss 00:00:00 -t 00:06:55  -c copy output000_move.mp4
rem ffmpeg -i output000.mp4 -ss 00:06:55 -c copy output000_stil.mp4


rem ffmpeg -y -i output000_stil.mp4 -vf setpts=0.1*PTS -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 10M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 output000_fast.mp4

rem ffmpeg -i input.mp4 -af asetrate=44100*4,atempo=1/2,atempo=1/2 output.mp4

rem ffmpeg -i new_audio.mp4 -i new_audio.srt -c copy -c:s mov_text outfile.mp4

rem ffmpeg -i new_audio.mp4 -f srt -i new_audio.srt -map 0:0 -map 0:1 -map 1:0 -c:v copy -c:a copy -c:s mov_text -disposition:s:0 default output.mp4

rem ffmpeg -i new_audio.mp4 -f srt -i new_audio.srt -map 0:0 -map 0:1 -map 1:0 -c:v copy -c:a copy -c:s mov_text -metadata:s:s:0 language=English -disposition:s:s:0 forced output.mp4

rem ffmpeg -i 20892416_1576742825733186_4108478063661023232_n.mp4 out.webp

rem ffmpeg -i 20892416_1576742825733186_4108478063661023232_n.mp4 -vcodec libwebp -preset default -an -vsync 0 output_filename.webp

rem ffmpeg -y -hide_banner -stream_loop 30 -i 47950384_2122603554427759_2714688032815972352_n.mp4 -filter_complex "scale=820:462,transpose=0" -strict -2 -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 -an "OUTPUT.MP4"

rem ffmpeg -y -hide_banner -stream_loop 30 -i 20892416_1576742825733186_4108478063661023232_n.mp4 -filter_complex "scale=820:462" -strict -2 -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 -an "OUTPUT.MP4"

rem ffmpeg -y -hide_banner -stream_loop 30 -i 47950384_2122603554427759_2714688032815972352_n.mp4 -filter_complex "scale=820:462,transpose=0" -vcodec libwebp -preset default -an -vsync 0 "OUTPUT.webp"

rem ffmpeg -y -i OUTPUT.MP4 -vf fps=10,scale=820:462:flags=lanczos,palettegen OUTPUT.MP4.png
rem ffmpeg -y -i OUTPUT.MP4 -i OUTPUT.MP4.png -filter_complex "fps=10,scale=820:462:flags=lanczos[x];[x][1:v]paletteuse" OUTPUT.gif

REM ffmpeg -y -hide_banner -stream_loop 15 -i 20892416_1576742825733186_4108478063661023232_n.mp4 -filter_complex "scale=820:462" -strict -2 -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 -an "OUTPUT1.MP4"

rem ffmpeg -y -hide_banner -i 47950384_2122603554427759_2714688032815972352_n.mp4 -filter_complex "transpose=0" -strict -2 -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 -an "OUTPUT_a.MP4"
rem ffmpeg -y -hide_banner -i output_a.mp4 -filter_complex "scale=820:462" -strict -2 -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 -an "OUTPUT_b.MP4"
REM ffmpeg -y -hide_banner -stream_loop 14 -i output_b.mp4 -strict -2 -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 -an "OUTPUT2.MP4"

rem ffmpeg -y -hide_banner -stream_loop 13 -i 47950384_2122603554427759_2714688032815972352_n.mp4 -filter_complex "scale=462:1920,transpose=0" -strict -2 -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 -an "OUTPUT3.MP4"

ffmpeg -y -hide_banner -stream_loop 13 -i 47950384_2122603554427759_2714688032815972352_n.mp4 -i long.mp3 -filter_complex "transpose=0,scale=1260:466:force_original_aspect_ratio=decrease,pad=1260:466:-1:-1:color=white" -strict -2 -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 "OUTPUT3.mkv"

rem ffmpeg -ss 00:00:19 -i m1.mp3 -t 00:00:05 m2.mp3
rem ffmpeg -i machine.webm m1.mp3
rem echo file 'm2.mp3' > list.txt
rem echo file 'm2.mp3' >> list.txt
rem echo file 'm2.mp3' >> list.txt
rem echo file 'm2.mp3' >> list.txt
rem echo file 'm2.mp3' >> list.txt
rem echo file 'm2.mp3' >> list.txt
rem echo file 'm2.mp3' >> list.txt
rem ffmpeg  -y -safe 0 -f concat -i list.txt -c copy long.mp3


rem ffmpeg -y -hide_banner -stream_loop 13 -i 47950384_2122603554427759_2714688032815972352_n.mp4 -i long.mp3 -filter_complex "transpose=0,scale=1920:1080:force_original_aspect_ratio=decrease,pad=1920:1080:-1:-1:color=white" -strict -2 -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -b:v 1.4M -bufsize 20M -bf:v 3 -preset slow -rc:v vbr_hq -rc-lookahead 32 "OUTPUT3.mp4"

rem ffmpeg -y -hide_banner -stream_loop 13 -i 47950384_2122603554427759_2714688032815972352_n.mp4 -i long.mp3 -filter_complex "transpose=0,scale=1920:1080:force_original_aspect_ratio=decrease,pad=1920:1080:-1:-1:color=white" -b:v 1.4M -preset slow "OUTPUT3.mp4"

rem ffmpeg -i output3.mp4 output3.mkv

rem #FFMPEG_IN_FILTER_COMPLEX="transpose=0,scale=820:462:force_original_aspect_ratio=decrease,pad=820:462:-1:-1:color=white"

pause
