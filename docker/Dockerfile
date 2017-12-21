FROM registry.okina.fr/na/keycloak

USER root
RUN yum install -y xmlstarlet

USER jboss
RUN xmlstarlet ed --inplace \
    -N x="urn:jboss:domain:undertow:3.0" \
    -a "//x:http-listener" \
    -t attr \
    -n 'proxy-address-forwarding' \
    -v 'true' \
    /opt/jboss/keycloak/standalone/configuration/standalone.xml