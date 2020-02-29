FROM ubuntu:16.04

RUN apt-get update

RUN apt-get -y install sudo

RUN apt-get -y install python

RUN apt-get -y install openjdk-8-jdk

ENV file CollabNetSubversionEdge-5.2.4_linux-x86_64.tar.gz

COPY ${file} /opt/

WORKDIR /opt/

RUN tar -xvf ${file} 

RUN rm ${file}

RUN groupadd csvn -g 1001

RUN useradd csvn -m -u 1001 -g 1001

RUN chown -R csvn:csvn csvn

RUN mv csvn/data/conf/csvn.conf.dist csvn/data/conf/csvn.conf

RUN sed -i 'aJAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/' csvn/data/conf/csvn.conf

RUN sed -i 'aRUN_AS_USER=csvn' csvn/data/conf/csvn.conf

ENTRYPOINT ["/opt/csvn/bin/csvn","console"]