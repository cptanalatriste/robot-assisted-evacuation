

docker rm -f evacuation-simulation
docker run --platform linux/amd64 --env JAVA_OPTS="-XX:+UnlockExperimentalVMOptions -XX:-UseG1GC -XX:+UseZGC"\
 --name evacuation-simulation -v "${PWD}"/workspace:/home/workspace -it robot-assisted-evacuation /bin/bash
# Deleting content from the frame directory
rm -rf workspace/frames/*
