cp impact2.10.7/v2.11.0.nlogo docker/src
cp impact2.10.7/config.nls docker/src
cp impact2.10.7/*.png docker/src

cd docker || exit
# docker build --tag robot-assisted-evacuation . 
# When not building in Linux, we need to run this command.
docker buildx build --platform linux/amd64 --tag robot-assisted-evacuation . 