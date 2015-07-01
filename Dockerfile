FROM n3ziniuka5/ubuntu-oracle-jdk:14.04-JDK8u45

RUN apt-get install -y --no-install-recommends unzip && \
    wget http://apache.mirror.serveriai.lt/tomcat/tomcat-8/v8.0.23/bin/apache-tomcat-8.0.23.zip -O tomcat.zip && \
    unzip -d /opt tomcat.zip && \
    ln -s /opt/apache-tomcat-8.0.23 /opt/tomcat && \
    chmod +x /opt/tomcat/bin/*.sh && \
    rm tomcat.zip

VOLUME ["/opt/tomcat/logs"]

EXPOSE 8080
WORKDIR /opt/tomcat
ENTRYPOINT ["./bin/catalina.sh"]
CMD ["run"]
