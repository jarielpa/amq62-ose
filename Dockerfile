FROM registry.access.redhat.com/jboss-amq-6/amq62-openshift

MAINTAINER  jarielpa

USER root

ADD conf/ /opt/amq/conf/
RUN chown jboss:jboss /opt/amq/conf/activemq.xml &&  chown jboss:jboss /opt/amq/conf/openshift-activemq.xml && chown jboss:jboss /opt/amq/conf/jetty.xml && \
       chmod 666 /opt/amq/conf/activemq.xml &&  chmod 666 /opt/amq/conf/openshift-activemq.xml &&  chmod 666 /opt/amq/conf/jetty.xml

USER jboss
