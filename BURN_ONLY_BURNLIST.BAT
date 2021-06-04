@echo off
set PATH=%CD%\BIN;%PATH%
setlocal ENABLEDELAYEDEXPANSION

for /F "tokens=*" %%A in (burnlist.txt) do (
	echo Burning video file: %%A

	if exist "%%A"  (
		call :BURN_FILE "%%A"
	)
)
pause
exit /b

:BURN_FILE
for /f "tokens=*" %%J in ('dir /b "%~n1.*.srt"') do (
	if not exist "%%J.fixed" bin\sof.exe "%%J"

	call :GET_LANGUAGE %%~nJ
	call :GET_BITRATE %1

	rem	ECHO LANGUAGE=!LANGUAGE!  BITRATE=!BITRATE!
	if not exist !LANGUAGE! mkdir !LANGUAGE!

	for %%X in ("%%J.fixed") do (
		if not %%~zX == 0 (
			if not exist "!LANGUAGE!/%~n1.!LANGUAGE!.mp4" (

				if not exist ADVANCE_STARTED.TXT (
					start cmd /k ADVANCE_DOWNLOADS.BAT
					echo STARTED > ADVANCE_STARTED.TXT
				)

rem 				bin\ffmpeg.exe -y -hide_banner -i %1 -map 0:v:0 -map 0:a:0 -strict -2 -filter_complex "scale=1920:1080:force_original_aspect_ratio=decrease,pad=1920:1080:-1:-1:color=black,subtitles=f='%%J.fixed':force_style='FontName=Arial,FontSize=24,Shadow=1'" -c:s mov_text -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -bufsize 20M -bf:v 3 -b:v !BITRATE! -preset slow -rc-lookahead 32 -c:a copy "!LANGUAGE!/%~n1.!LANGUAGE!.PART.mp4" 
				echo ffmpeg.exe -n -hide_banner -i %1 -map 0:v:0 -map 0:a:0 -strict -2 -filter_complex "scale=1920:1080:force_original_aspect_ratio=decrease,pad=1920:1080:-1:-1:color=black,subtitles=f='%%J.fixed':force_style='FontName=Arial,FontSize=24,Shadow=1'" -c:s mov_text -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -bufsize 20M -bf:v 3 -crf 23 -preset slow -rc-lookahead 32 -c:a copy "%~n1.!LANGUAGE!.mp4" >> !LANGUAGE!/burn.!LANGUAGE!.bat
				ffmpeg.exe -y -hide_banner -i %1 -map 0:v:0 -map 0:a:0 -strict -2 -filter_complex "scale=1920:1080:force_original_aspect_ratio=decrease,pad=1920:1080:-1:-1:color=black,subtitles=f='%%J.fixed':force_style='FontName=Arial,FontSize=24,Shadow=1'" -c:s mov_text -c:v h264_nvenc -profile:v high -pix_fmt yuv420p -bufsize 20M -bf:v 3 -crf 23 -preset slow -rc-lookahead 32 -c:a copy "!LANGUAGE!/%~n1.!LANGUAGE!.PART.mp4" 

				if exist "!LANGUAGE!\%~n1.!LANGUAGE!.PART.mp4" (
					echo Conversion ready: %1 >> burn.!LANGUAGE!.log
					rename "!LANGUAGE!\%~n1.!LANGUAGE!.PART.mp4" "%~n1.!LANGUAGE!.mp4"
				) else (
					echo Conversion failed: %1
					echo Conversion failed: %1 >> error.log
				)
			) else (
				echo Already exists: !LANGUAGE!/%~n1.!LANGUAGE!.mp4
				echo Already exists: !LANGUAGE!/%~n1.!LANGUAGE!.mp4 >> error.log
			)
		) else (
			echo Subtitle file empty: %%J.fixed
			echo Subtitle file empty: %%J.fixed >> error.log
		)
	)
)
if not exist ORIGINAL mkdir ORIGINAL
move "%~n1.*" ORIGINAL >NUL
echo -------------------------------------------------------------------------------------------------
exit /b


:GET_LANGUAGE
set LANGUAGE=%~x1
set LANGUAGE=!LANGUAGE:~1!
exit /b
	
:GET_BITRATE
bin\ffprobe.exe -v error -select_streams v:0 -show_entries format=bit_rate -of default=nw=1 %1 > bit_rate.txt
for /F "tokens=*" %%R in (bit_rate.txt) do (
	for /f "tokens=1,2 delims==" %%a in ("%%R") do set NAME=%%a & set BITRATE=%%b
)
rem ffprobe -select_streams v -show_entries packet=size:stream=duration -of compact=p=0:nk=1
exit /b
	