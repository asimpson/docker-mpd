from alpine:3.12

run apk update && apk upgrade && apk add mpd

copy ./.mpdconf /root/.mpdconf

run mkdir -p ~/.mpd/playlists

run touch ~/.mpd/pid && touch ~/.mpd/log && touch ~/.mpd/database

expose 8000

expose 6601

cmd ["mpd","--no-daemon", "/root/.mpdconf"]
