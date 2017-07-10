FROM resin/rpi-raspbian

RUN apt-get update && apt-get install ser2net -y

COPY ser2net.conf /etc
COPY start.sh /

RUN chmod +x start.sh
