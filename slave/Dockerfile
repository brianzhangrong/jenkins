FROM jenkinsci/jnlp-slave

USER root
USER ${user}
WORKDIR /usr/local
COPY ./jdk-8u221-linux-x64.tar.gz  /usr/local
COPY ./docker-19.03.9.tgz /usr/local
COPY ./run.sh /usr/local


RUN chmod a+x run.sh 

RUN tar -zxvf docker-19.03.9.tgz 
RUN cp -rf /usr/local/docker/* /usr/local/bin/
RUN rm -rf /usr/local/openjdk-8 && tar xf jdk-8u221-linux-x64.tar.gz -C /usr/local && mv jdk1.8.0_221 openjdk-8  
RUN echo "deb http://mirrors.aliyun.com/debian stretch main contrib non-free" >/etc/apt/sources.list
RUN echo "deb-src http://mirrors.aliyun.com/debian stretch main contrib non-free" >>/etc/apt/sources.list
RUN echo "deb http://mirrors.aliyun.com/debian stretch-updates main contrib non-free" >>/etc/apt/sources.list
RUN echo "deb-src http://mirrors.aliyun.com/debian stretch-updates main contrib non-free" >>/etc/apt/sources.list
RUN echo "deb http://mirrors.aliyun.com/debian-security stretch/updates main contrib non-free" >>/etc/apt/sources.list
RUN echo "deb-src http://mirrors.aliyun.com/debian-security stretch/updates main contrib non-free" >>/etc/apt/sources.list

RUN  apt-get update

#RUN wget -qO- https://get.docker.com/ | sh

#ARG user=jenkins
#RUN usermod -aG docker ${USER}
#RUN systemctl restart docker

RUN sh /usr/local/run.sh

ENTRYPOINT ["jenkins-agent"]
