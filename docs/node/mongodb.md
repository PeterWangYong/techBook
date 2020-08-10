# MongoDB

## 什么是MongoDB？

## 为什么使用MongoDB？

## 安装部署

### docker-compose部署

1. docker-compose.yml

   ```yaml
   version: '3.1'
   services:
     mongo:
       image: mongo
       restart: always
       environment:
         MONGO_INITDB_ROOT_USERNAME: root
         MONGO_INITDB_ROOT_PASSWORD: password
       ports:
         - 27017:27017
       volumes:
         - /data/mongodb/db:/data/db
   ```

2. 启动容器

   ```bash
   docker-compose up -d
   ```

   