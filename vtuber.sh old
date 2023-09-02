#!/bin/bash
# 1st script
run_script1=true
while $run_script1; do
    if yt-dlp --wait-for-video 600 https://twitch.tv/lilyhops --skip-download && zenity --question --text="Lilyhopkins is LIVE" --ok-label="Watch" --cancel-label="NO" && [ $? -eq 0 ] && streamlink https://twitch.tv/lilyhops 720p,720p60 --player=mpv; then
        run_script1=false
    else
        echo "A lilyhops error occurred, retrying in 10 seconds..."
        sleep 10
    fi
done &

# 2nd script
run_script2=true
while $run_script2; do
    if yt-dlp --wait-for-video 600 https://www.twitch.tv/Leaflit --skip-download && zenity --question --text="Leaflit is LIVE" --ok-label="Watch" --cancel-label="NO" && [ $? -eq 0 ] && streamlink https://www.twitch.tv/Leaflit 720p,720p60 --player=mpv; then
        run_script2=false
    else
        echo "A Leaflit error occurred, retrying in 10 seconds..."
        sleep 10
    fi
done &

# 3rd script
run_script3=true
while $run_script3; do
    if yt-dlp --wait-for-video 600 https://www.youtube.com/@NintendoAmerica/live --skip-download && zenity --question --text="Youtube Nintendo is LIVE" --ok-label="Watch" --cancel-label="NO" && [ $? -eq 0 ] && streamlink https://www.youtube.com/@NintendoAmerica/live 1080P,1080p60 --player=mpv & yt-dlp --wait-for-video 600 https://www.twitch.tv/nintendo --skip-download && zenity --question --text="Twitch Nintendo is LIVE" --ok-label="Watch" --cancel-label="NO" && [ $? -eq 0 ] && streamlink https://www.twitch.tv/nintendo 1080P,1080p60 --player=mpv; then
        run_script3=false
    else
        echo "A Nintendo error occurred, retrying in 10 seconds..."
        sleep 10
    fi
done &

# 4th script
run_script4=true
while $run_script4; do
    if yt-dlp --wait-for-video 600 https://www.twitch.tv/mintcastella --skip-download && zenity --question --text="Mint Castella is LIVE" --ok-label="Watch" --cancel-label="NO" && [ $? -eq 0 ] && streamlink https://www.twitch.tv/mintcastella 720p,720p60 --player=mpv; then
        run_script4=false
    else
        echo "A mint error occurred, retrying in 10 seconds..."
        sleep 10
    fi
done &

# 5th script
run_script5=true
while $run_script5; do
    if yt-dlp --wait-for-video 600 https://www.youtube.com/@GawrGura/live --skip-download && zenity --question --text="Your favorite shark is LIVE" --ok-label="Watch" --cancel-label="NO" && [ $? -eq 0 ] && streamlink https://www.youtube.com/@GawrGura/live 720p,720p60 --player=mpv; then
        run_script5=false
    else
        echo "A GawrGura error occurred, retrying in 10 seconds..."
        sleep 10
    fi
done &

wait

