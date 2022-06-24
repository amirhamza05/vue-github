echo "deploying===========================";
docker stop github-vue
docker rm github-vue

docker-compose up -d