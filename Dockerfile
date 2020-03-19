FROM centos:centos7

RUN yum install -y unzip java-1.8.0-openjdk-devel.x86_64

ADD apache-tomcat-8.5.51.zip /tmp/

RUN mkdir /tomcat && \
    unzip /tmp/apache-tomcat-8.5.51.zip -d /tomcat && \
    chmod 755 /tomcat/apache-tomcat-8.5.51/bin/*.sh

ADD run.sh /tomcat/apache-tomcat-8.5.51/bin

EXPOSE 8080

CMD ["/tomcat/apache-tomcat-8.5.51/bin/run.sh"]
