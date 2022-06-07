IMAGE_NAME=unity-create-activation-file

docker build -t $IMAGE_NAME -f Dockerfile .
docker run --rm -v $PWD:/mnt $IMAGE_NAME
docker rmi $IMAGE_NAME
