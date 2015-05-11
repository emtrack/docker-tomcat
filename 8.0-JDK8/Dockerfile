FROM n3ziniuka5/ubuntu-oracle-jdk:14.04-JDK8u45
MAINTAINER Laurynas Tretjakovas "laurynas.tretjakovas@gmail.com"

RUN apt-get install -y --no-install-recommends unzip && \
    wget http://apache.mirror.serveriai.lt/tomcat/tomcat-8/v8.0.22/bin/apache-tomcat-8.0.22.zip -O tomcat.zip && \
    unzip -d /opt tomcat.zip && \
    ln -s /opt/apache-tomcat-8.0.22 /opt/tomcat && \
    chmod +x /opt/tomcat/bin/*.sh && \
    rm tomcat.zip

VOLUME ["/opt/tomcat/logs"]

EXPOSE 8080
WORKDIR /opt/tomcat
ENTRYPOINT ["./bin/catalina.sh"]
CMD ["run"]
