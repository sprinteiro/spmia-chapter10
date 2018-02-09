echo "Pushing service docker images to docker hub ...."
docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD
docker push sprinteiro/tmx-authentication-service:$BUILD_NAME
docker push sprinteiro/tmx-licensing-service:$BUILD_NAME
docker push sprinteiro/tmx-organization-service:$BUILD_NAME
docker push sprinteiro/tmx-confsvr:$BUILD_NAME
docker push sprinteiro/tmx-eurekasvr:$BUILD_NAME
docker push sprinteiro/tmx-zuulsvr:$BUILD_NAME
