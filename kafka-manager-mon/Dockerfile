FROM openjdk:8-jre

WORKDIR /usr

RUN apt-get update -y

RUN apt-get install -y curl \
  && curl -sL https://deb.nodesource.com/setup_9.x | bash - \
  && apt-get install -y nodejs \
  && curl -L https://www.npmjs.com/install.sh | sh

ADD kafka-manager-1.3.3.22 kafka-manager

WORKDIR /usr/kafka-manager

COPY km.sh .

CMD ["sh", "km.sh"]
