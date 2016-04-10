#!/bin/bash

# jenkins swarm slave
JAR=`ls -1 /usr/share/jenkins/swarm-client-*.jar | tail -n 1`

PARAMS="-master http://$JENKINS_PORT_8080_TCP_ADDR:$JENKINS_PORT_8080_TCP_PORT \
-username jenkins -password jenkins -executors 1"

echo Running java $JAVA_OPTS -jar $JAR -fsroot $HOME $PARAMS
exec java $JAVA_OPTS -jar $JAR -fsroot $HOME $PARAMS
