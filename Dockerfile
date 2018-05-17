FROM centos
MAINTAINER xuejike "xuejike2004@126.com"
ENV TZ=Asia/Shanghai
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai  /etc/localtime
RUN yum install -y glibc.i686 openssl-devel.i686 java-1.8.0-openjdk.x86_64


COPY /jm  /jm

#COPY jk-faststart-0.0.1-SNAPSHOT.jar /server.jar
EXPOSE 8080
CMD chmod +x /jm/sign 
CMD /jm/sign
