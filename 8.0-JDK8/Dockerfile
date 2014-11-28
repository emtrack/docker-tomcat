FROM n3ziniuka5/ubuntu-oracle-jdk:14.04-JDK8
MAINTAINER Laurynas Tretjakovas "laurynas.tretjakovas@gmail.com"

RUN apt-get install -y --no-install-recommends unzip && \
    apt-get install -y --no-install-recommends wget && \
    wget http://apache.mirror.serveriai.lt/tomcat/tomcat-8/v8.0.15/bin/apache-tomcat-8.0.15.zip && \
    unzip -d /opt apache-tomcat-8.0.15.zip && \
    ln -s /opt/apache-tomcat-8.0.15 /opt/tomcat && \
    chmod +x /opt/tomcat/bin/*.sh && \
    rm apache-tomcat-8.0.15.zip && \
    rm -Rf /opt/tomcat/webapps/*

VOLUME ["/opt/tomcat/logs"]

EXPOSE 8080
WORKDIR /opt/tomcat
ENTRYPOINT ["./bin/catalina.sh"]
CMD ["run"]
