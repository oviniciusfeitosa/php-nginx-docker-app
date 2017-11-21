FROM nginx:1.12

MAINTAINER Vinicius Feitosa Da Silva <viniciusfesil@gmail.com>

RUN apt-get update
RUN apt-get install -y git

COPY ./docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-entrypoint.sh"]

#CMD ["nginx", "-g", "daemon off;"]
CMD ["forego", "start", "-r"]
