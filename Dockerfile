FROM land007/ubuntu:latest

MAINTAINER Yiqiu Jia <yiqiujia@hotmail.com>

RUN apt-get install -y libfontconfig1 libfreetype6 libice6 libsm6
ADD codemeter_6.70.3152.500_amd64.deb /tmp
RUN dpkg -i /tmp/codemeter_6.70.3152.500_amd64.deb && rm -f /tmp/codemeter_6.70.3152.500_amd64.deb
RUN service codemeter start && service codemeter status && cmu -l

ADD netcert.sh /
RUN sed -i 's/\r$//' /netcert.sh
RUN chmod a+x /netcert.sh

ENV CodeMeter_Server 192.168.86.8

EXPOSE 22350/tcp 22351/tcp 22352/tcp

CMD /netcert.sh; /etc/init.d/ssh start; bash

#docker stop ubuntu-codemeter ; docker rm ubuntu-codemeter ; docker run -it -p 20122:20022  -e "CodeMeter_Server=10.2.0.109" --privileged --name ubuntu-codemeter land007/ubuntu-codemeter:latest
#docker stop ubuntu-codemeter ; docker rm ubuntu-codemeter ; docker run -it -p 20122:20022 -p 3000:3000 -p 3001:3001 -p 3002:3002 -p 3003:3003 -p 3004:3004 -p 3005:3005 -p 3006:3006 -p 3007:3007 -p 3008:3008 -p 3009:3009  -e "CodeMeter_Server=192.168.86.8" --privileged --name ubuntu-codemeter land007/ubuntu-codemeter:latest
