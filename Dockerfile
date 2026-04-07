FROM ubuntu:22.04

RUN apt update && apt install -y ffmpeg fonts-dejavu-core

WORKDIR /app
COPY . .

CMD ["bash", "stream.sh"]