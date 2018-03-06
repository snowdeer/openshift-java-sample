FROM centos:7

RUN yum update -y && \
yum install -y wget && \
yum install -y java-1.8.0-openjdk java-1.8.0-openjdk-devel && \
yum clean all

ENV HOME /app
WORKDIR /app

COPY ./app .

EXPOSE 8080

RUN javac /app/SimpleWebServer.java
CMD ["java", "SimpleWebServer"]