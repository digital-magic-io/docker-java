FROM openjdk:8
MAINTAINER Jevgeni Goloborodko <jevgeni@digital-magic.io>

USER root

#ENV BASE_DIR /opt

# Install base packages
RUN apt-get update && apt-get --no-install-recommends -y install sysstat netcat net-tools lsof telnet traceroute wget busybox nano less ed vim sudo zip unzip curl locales supervisor lynx curl

# Install locales
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
RUN locale-gen
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

#ENV PRODUCT_HOME $BASE_DIR/product
#RUN useradd -m -d $PRODUCT_HOME -s /bin/bash product && chmod 770 /opt/product

#RUN mkdir $PRODUCT_HOME/.ssh && chown product:product $PRODUCT_HOME/.ssh && chmod 700 $PRODUCT_HOME/.ssh
#RUN ssh-keygen -q -N "" -t rsa -f $PRODUCT_HOME/.ssh/id_rsa
#RUN echo "StrictHostKeyChecking no" >> $PRODUCT_HOME/.ssh/config
#RUN cp $PRODUCT_HOME/.ssh/id_rsa.pub $PRODUCT_HOME/.ssh/authorized_keys && chown product:product $PRODUCT_HOME/.ssh/*

EXPOSE 22
