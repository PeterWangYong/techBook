# Koa

## 什么是Koa？

## 为什么使用Koa？

## 基本使用

```javascript
import Koa from 'koa'
const app = new Koa()

app.use(ctx => {
  ctx.body = 'Hello World'
})

app.listen(3000)
```

## 常用中间件

- koa-body
- @koa/cors
- koa-combine-routers
- koa-compose
- koa-helmet
- koa-json
- koa-router
- koa-static

