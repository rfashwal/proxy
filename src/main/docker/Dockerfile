FROM balenalib/raspberrypi3-debian-openjdk:8-jdk-build-20190612

RUN install_packages netcat
RUN mkdir -p /usr/local/proxy
ADD @project.build.finalName@.jar /usr/local/proxy/

ADD run.sh run.sh
RUN chmod +x run.sh

CMD ./run.sh
