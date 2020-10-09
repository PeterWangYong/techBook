# 数据库定义语言

## 数据库

### 创建数据库

```mysql
create {database | schema} [if not exists] db_name [default] character set [=] charset_name
```

### 删除数据库

```mysql
drop database db_name;
```

### 查询数据库

```mysql
show databases;
select database(); // 当前数据库
```

### 数据库编码

```mysql
show create database db_name;
alter database t1 character set utf8;
```

### 打开数据库

```mysql
use db_name;
```

