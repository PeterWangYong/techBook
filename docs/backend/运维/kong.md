# Kong

## 虚拟机部署

> 依赖：epel，postgresql 9.5+

```shell
sudo yum install -y kong-2.0.1.el7.amd64.rpm --nogpgcheck

sudo cp /etc/kong/kong.conf.default /etc/kong/kong.conf

vim /etc/kong/kong.conf

admin_listen = 0.0.0.0:8001....

database = postgres

pg_host = 127.0.0.1

pg_port = 5432

pg_timeout = 5000

pg_user = kong

pg_password = Kong

pg_database = kong

# 初始化数据表

kong migrations bootstrap [-c /path/to/kong.conf]

kong start [-c /path/to/kong.conf]
```

## Konga 部署

> 依赖 NodeJS8+

```bash
git clone https://github.com/pantsel/konga.git
cd konga
npm i

# 修改配置，如果没有.env则按照默认配置
cp .env_example .env

npm start // 开发模式
npm run production // 生产模式
```
