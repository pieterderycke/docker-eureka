docker rm -f eureka
docker rmi -f eureka
docker build --tag eureka .
docker run -p 8080:8080 --name=eureka --network="netflix-network" --network-alias="eureka" eureka