FROM registry.access.redhat.com/jboss-amq-6/amq62-openshift

MAINTAINER  jarielpa

USER jboss

ADD conf/ /opt/amq/conf/
