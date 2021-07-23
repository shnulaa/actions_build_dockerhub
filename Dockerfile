# 基础镜像 jdk1.8
FROM java:8

# 作者
MAINTAINER sudojia

# 把可执行 jar 包复制到基础镜像的根目录下
ADD actions_build_springboot_docker-1.0-RELEASE.jar /actions_build_springboot_docker.jar

# 镜像要暴露的端口，如要使用端口，在执行 docker run 命令时使用 -p 生效
EXPOSE 8989

# 在镜像运行为容器后执行的命令
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/actions_build_springboot_docker.jar"]
