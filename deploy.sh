echo "deploying===========================";

echo '============================ Build Docker Compose File ===========================';
docker-compose build

echo '===================== Stop and Remove Docker Container ===========================';
docker stop github-vue
docker rm github-vue

echo '============================ Run Docker Container ================================';
docker-compose up -d