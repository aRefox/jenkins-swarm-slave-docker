#!/bin/bash

# jenkins swarm slave
start() {
    JAR=`ls -1 /usr/share/jenkins/swarm-client-*.jar | tail -n 1`
    PARAMS="-master http://$JENKINS_PORT_8080_TCP_ADDR:$JENKINS_PORT_8080_TCP_PORT \
-username jenkins -password jenkins -executors 1"
    echo Running java $JAVA_OPTS -jar $JAR -fsroot $HOME $PARAMS
    exec java $JAVA_OPTS -jar $JAR -fsroot $HOME $PARAMS
}

stop() {
    PID=$(ps ax | grep [j]ava | cut -c1-5)
    kill -INT $PID
}

case ${1} in
    slave:start)
        start
        ;;
    slave:stop)
        stop
        ;;
esac
