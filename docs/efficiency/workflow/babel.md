# Babel

## 什么是babel?

Babel 是一个工具链，主要用于将 ECMAScript 2015+ 版本的代码转换为向后兼容的 JavaScript 语法，以便能够运行在当前和旧版本的浏览器或其他环境中。

> 参考资料：https://www.babeljs.cn/docs/

## 为什么使用babel？

## 配置案例

### 安装依赖

```bash
yarn add @babel/core @babel/node @babel/preset-env -D
```

### .babelrc

```json
{
  // 通过preset使用一组插件
  "presets": [
    [
      // preset包名
      "@babel/preset-env",
      // preset的Options
      {
        "targets": {
          "node": "current"
        }
      }
    ]
  ]
}

```

