FROM alpine

ENV OVERCAST_USERNAME username
ENV OVERCAST_PASSWORD password

MAINTAINER Karl Söderström "karl@karlsoderstrom.com"

RUN apk add --update build-base git python2 python2-dev py-pip libxml2-dev libxslt-dev zlib-dev

RUN git clone https://github.com/jacobian/overcast-sonos.git
WORKDIR ./overcast-sonos

RUN pip install -r requirements.txt

EXPOSE 8140
CMD ["python", "overcast-sonos.py"]
