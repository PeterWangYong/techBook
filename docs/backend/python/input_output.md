# 输入与输出

## input()

```python
name = input('your name:')
age = input('your age:')
print(name, age)
```

input() 函数暂停程序运行，同时等待键盘输入；直到回车被按下，函数的参数即为提示语，输入的类型永远是字符串型（str）。

## 文件读写

我们先要用 open() 函数拿到文件的指针。其中，第一个参数指定文件位置（相对位置或者绝对位置）；第二个参数，如果是 'r'表示读取，如果是'w' 则表示写入，当然也可以用 'rw' ，表示读写都要。a 则是一个不太常用（但也很有用）的参数，表示追加（append），这样打开的文件，如果需要写入，会从原始文件的最末尾开始写入。

**最后需要注意的是，所有 I/O 都应该进行错误处理。因为 I/O 操作可能会有各种各样的情况出现，而一个健壮（robust）的程序，需要能应对各种情况的发生，而不应该崩溃（故意设计的情况除外）。**

## JSON序列化

json.dumps() 这个函数，接受 Python 的基本数据类型，然后将其序列化为 string；而 json.loads() 这个函数，接受一个合法字符串，然后将其反序列化为 Python 的基本数据类型。









