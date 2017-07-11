FROM resin/rpi-raspbian

RUN apt-get update && apt-get install socat -y

COPY start.sh /

RUN chmod +x start.sh
