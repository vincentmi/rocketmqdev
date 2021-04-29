FROM openjdk:8-alpine3.9
LABEL  Author=miwenshu Site=http://vnzmi.com

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories && apk update && apk add supervisor 

VOLUME /var/rocketmq

ENV  NAMESRV_ADDR=127.0.0.1:9876

EXPOSE 9876 8080

COPY ./rocketmq-all-4.8.0-bin-release/ rocketmq-console-ng-2.0.0.jar  /opt/rocketmq/

COPY conf/name.ini conf/broker.ini conf/web.ini  /etc/supervisor.d/

CMD ["/usr/bin/supervisord","-n","-c","/etc/supervisord.conf"]