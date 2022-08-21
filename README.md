# ariang-docker
AriaNg的docker镜像

docker run -d --name ariang -p 80:80 huangzulin/ariang-docker


自行构建

docker build -t huangzulin/ariang-docker . --network=host
