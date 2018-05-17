FROM centos
MAINTAINER xuejike "xuejike2004@126.com"
ENV TZ=Asia/Shanghai
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai  /etc/localtime
 #安装中文支持 
RUN yum -y install kde-l10n-Chinese && yum -y reinstall glibc-common
#配置显示中文 
RUN localedef -c -f UTF-8 -i zh_CN zh_CN.utf8 
#设置环境变量 
ENV LC_ALL zh_CN.utf8 
RUN yum install -y glibc.i686 openssl-devel.i686 java-1.8.0-openjdk.x86_64
