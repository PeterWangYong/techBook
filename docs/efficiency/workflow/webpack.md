# Webpack

## 什么是webpack？

## 为什么使用webpack？

## 配置案例

### 面向Node环境

```js
const path = require('path')
const nodeExternals = require('webpack-node-externals')
const { CleanWebpackPlugin } = require('clean-webpack-plugin')

const webpackconfig = {
  // 编译为类Node环境可用代码
  target: 'node',
  mode: 'development',
  entry: {
    server: path.join(__dirname, 'src/index.js'),
  },
  output: {
    filename: '[name].bundle.js',
    path: path.join(__dirname, './dist'),
  },
  // 配置source-map
  devtool: 'eval-source-map',
  // 配置loader
  module: {
    rules: [
      {
        test: /\.(js|jsx)$/,
        use: {
          loader: 'babel-loader',
        },
        exclude: [path.join(__dirname, '/node_modules')],
      },
    ],
  },
  // 配置plugin
  plugins: [new CleanWebpackPlugin()],
  // 打包时排除node_modules依赖
  externals: [nodeExternals()],
}

module.exports = webpackconfig
```

## 分环境配置

### webpack-merge

使用webpack-merge合并webpack配置

```js
const webpackMerge = require('webpack-merge')
const baseWebpackConfig = require('./webpack.config.base')

const webpackConfig = webpackMerge(baseWebpackConfig, {
  mode: 'development',
  devtool: 'eval-source-map',
  stats: { children: false },
})

module.exports = webpackMerge
```

### 分环境base,dev,prod

```bash
config/
├── webpack.config.base.js
├── webpack.config.dev.js
└── webpack.config.prod.js
```

