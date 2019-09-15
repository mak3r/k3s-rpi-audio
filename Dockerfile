FROM raspbian/stretch

RUN apt-get update && \
apt-get upgrade -y && \
apt-get install -y alsa-utils

WORKDIR audio-files
COPY ./audio-files audio-files 

ENTRYPOINT ["speaker-test", "-c2", "-s", "2", "--test=wav", "-w"] 

CMD ["/audio-files/CowMoo5.wav"]
