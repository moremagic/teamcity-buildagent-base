FROM centos
MAINTAINER moremagic <itoumagic@gmail.com>
RUN yum -y update
RUN yum install -y passwd openssh-server openssh-clients initscripts
RUN yum install -y install java-1.7.0-* git wget curl tar zip unzip

RUN echo 'root:root' | chpasswd
RUN /usr/sbin/sshd-keygen



EXPOSE 22 9090 9091
CMD /usr/sbin/sshd -D
