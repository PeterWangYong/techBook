# Promise

## 回调函数Promise化

现在的JS异步编程，通常都会使用async/await模式，但要支持这个模式,await后面必须是一个Promise对象。
因而对于现存的很多基于回调模式的API，我们需要将其Promise化来实现“类同步”调用。

比如我们要将SetTimeout进行Promise化

```javascript
function PromiseSetTimeout(handler, timeout) {
    return new Promise((resolve, reject) => {
        setTimeout(() => {
            handler()
            resolve()  // 核心就是这一步
        }, timeout)
    })
}
```

异步调用的问题：我不知道什么时候调用完成
解决方案：
1. 你调用完成后帮我执行剩下的逻辑
2. 你调用完成后告诉我，我自己执行剩下的逻辑

 第二种方式更有利于将异步过程同步化，毕竟对我来说要做的就是等待然后执行下面的逻辑
 要实现“你调用完成告诉我”，我们需要一个中间容器接收这个“信号”和返回值，Promise就是这个容器
 要实现将回调Promise化，本质就是在回调函数中将“调用方”传入的参数(返回值)和调用完成的“信号”存入Promise容器
 在JS中由于闭包的存在，任何地方执行回调函数都能够影响外部变量，因而可以方便的更改Promise的状态，实现Promise化

- 链式调用

```javascript
PromiseSetTimeout(() => {
    console.log("time out");
}, 2000).then(data => {
    console.log("then function after 2000ms");
})
```

- async/await调用

```javascript
async function test() {
    const ret = await PromiseSetTimeout(() => {
        console.log("time out");
    }, 2000)
    console.log("then function after 2000ms")
}

test()
```