echo "Launching $BUILD_NAME IN AMAZON ECS"
ecs-cli configure --region eu-west-2 --cluster spmia-tmx-dev --default-launch-type EC2 --config-name spmia-tmx-dev
ecs-cli configure profile --access-key $AWS_ACCESS_KEY_ID --secret-key $AWS_SECRET_ACCESS_KEY --profile-name  spmia-tmx-dev

ecs-cli compose --file docker/common/docker-compose.yml up
rm -rf ~/.ecs
