# nodejs running

FROM centos:centos7

RUN curl  https://nodejs.org/dist/v5.3.0/node-v5.3.0-linux-x64.tar.gz >node-v5.3.0-linux-x64.tar.gz
RUN curl  https://raw.githubusercontent.com/surven/nodedocker/master/nodeinstall >nodeinstall
RUN curl  https://raw.githubusercontent.com/surven/nodedocker/master/test.js >test.js 
RUN chmod +x /nodeinstall;sh /nodeinstall

EXPOSE 8080

CMD ["node",  "test.js"]
