#!/bin/bash

check_streamer_live() {
    local streamer_name=$1
    local streamer_url=$2
    local stream_quality=$3
    local run_script=true

    while $run_script; do
        if ! yt-dlp --wait-for-video 600 $streamer_url --skip-download; then
            echo "An error occurred with yt-dlp for $streamer_name, retrying in 10 seconds..."
            sleep 10
            continue
        fi

        if ! zenity --question --text="$streamer_name is LIVE" --ok-label="Watch" --cancel-label="NO"; then
            echo "An error occurred with zenity for $streamer_name, retrying in 1 hour..."
            sleep 3600
            continue
        fi

        if [ $? -eq 0 ]; then
            if ! streamlink $streamer_url $stream_quality --player=mpv; then
                echo "An error occurred with streamlink for $streamer_name, retrying in 10 seconds..."
                sleep 10
                continue
            fi
            sleep 5
        fi

        run_script=false
    done &
}

check_streamer_live "Lilyhopkins" "https://twitch.tv/lilyhops" "720p,720p60"
check_streamer_live "Leaflit" "https://www.twitch.tv/Leaflit" "720p,720p60"
check_streamer_live "Youtube Nintendo" "https://www.youtube.com/@NintendoAmerica/live" "1080P,1080p60"
check_streamer_live "Twitch Nintendo" "https://www.twitch.tv/nintendo" "1080P,1080p60"
check_streamer_live "Mint Castella" "https://www.twitch.tv/mintcastella" "720p,720p60"
check_streamer_live "Your favorite shark" "https://www.youtube.com/@GawrGura/live" "720p,720p60"
check_streamer_live "KingCobraJFS" "https://www.youtube.com/@KingCobraJFS/live" "720p,720p60"

wait
