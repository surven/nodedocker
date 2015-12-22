# nodejs running

FROM centos:centos7

#from network
RUN mkdir src; cd /src
RUN curl  https://nodejs.org/dist/v5.3.0/node-v5.3.0-linux-x64.tar.gz >node-v5.3.0-linux-x64.tar.gz
RUN curl  https://raw.githubusercontent.com/surven/nodedocker/master/nodeinstall >nodeinstall
RUN curl  https://raw.githubusercontent.com/surven/nodedocker/master/test.js >test.js 

#form local put all file need in current
#ADD . /src

RUN  cd /src ;chmod +x /src/nodeinstall;sh /src/nodeinstall

EXPOSE 8080

CMD ["node",  "src/test.js"]
