# Jenkins

## 什么是 Jenkins

## 为什么使用 Jenkins

## 安装部署

### docker 部署

1. 下载镜像，启动容器

   ```bash
   docker run -itd --name jenkins -p 11005:8080 -p 50000:50000 jenkins/jenkins:lts
   ```

2. 获取默认密码

   ```bash
   docker logs -f jenkins
   ```

   ![image-20200805140730108](https://gitee.com/PeterWangYong/blog-image/raw/master/images/image-20200805140730108.png)

3. 解锁 Jenkins

   访问`http://localhost:11005`，填入密码解锁 Jenkins

   ![image-20200805145720278](https://gitee.com/PeterWangYong/blog-image/raw/master/images/image-20200805145720278.png)
