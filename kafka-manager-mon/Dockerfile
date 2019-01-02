FROM node:8.6.0

WORKDIR /usr

RUN apt-get update -y

RUN apt-get install update -y && apt-get install openjdk8*

ADD kafka-manager-1.3.3.22 kafka-manager

WORKDIR /usr/kafka-manager

COPY km.sh .

CMD ["sh", "km.sh"]
