# docker_ubuntu-codemeter


```bash
#Start
docker stop ubuntu-codemeter ; docker rm ubuntu-codemeter ; docker run -it -p 20122:20022 -p 22350:22350 -p 22351:22351 -p 22352:22352 -e "CodeMeter_Server=10.2.0.109" --privileged --name ubuntu-codemeter land007/ubuntu-codemeter:latest
#Open more ports
docker stop ubuntu-codemeter ; docker rm ubuntu-codemeter ; docker run -it -p 20122:20022 -p 22350:22350 -p 22351:22351 -p 22352:22352 -p 3003:3003 -p 3004:3004 -p 3005:3005 -p 3006:3006 -p 3007:3007 -p 3008:3008 -p 3009:3009  -e "CodeMeter_Server=192.168.86.8" --privileged --name ubuntu-codemeter land007/ubuntu-codemeter:latest

```

![img](https://github.com/land007/docker_ubuntu-codemeter/raw/master/img/WechatIMG327.jpeg)
