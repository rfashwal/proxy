#!/bin/sh

echo "########"
echo "waiting for discovery to start"
echo "########"

while ! `nc -z discovery 8761 `; do sleep 3; done

echo ">>>>>>>>> starting proxy"

echo "######"
echo "proxy service"
echo "######"
java -Dspring.profiles.active=$PROFILE -jar -Xmx32m -Xss256k /usr/local/proxy/@project.build.finalName@.jar
