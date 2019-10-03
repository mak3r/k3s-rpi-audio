FROM debian:buster-slim

RUN apt-get update && \
apt-get upgrade -y && \
apt-get install -y alsa-utils

WORKDIR app 
COPY audio-files/. .
COPY scripts/. .

ENTRYPOINT ["/app/play_audio.sh"]

CMD ["100", "/app/CowMoo5.wav"]
