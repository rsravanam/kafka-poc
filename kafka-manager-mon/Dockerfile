FROM openjdk:8

WORKDIR /usr

RUN apt-get update -y

RUN apt-get install unzip -y && apt-get install nodejs -y && apt-get install npm

ADD kafka-manager-1.3.3.22 kafka-manager

WORKDIR /usr/kafka-manager

COPY km.sh .

CMD ["sh", "km.sh"]
