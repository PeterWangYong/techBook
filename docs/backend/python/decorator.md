# 装饰器

## 函数式编程

python中一切都是对象，函数也是对象。

函数参数和返回值可以是对象的引用，因而函数可以作为函数的参数和返回值。

接收函数作为参数或返回值的函数称作高阶函数。

## 语法糖

语法糖是编程语言中的一种特殊语法，旨在让代码更可读，简化程序员的工作。

## 函数装饰器

函数装饰器本质是一个高阶函数，通过接收一个函数，返回一个新的函数实现「装饰」功能。

一个校验装饰器：

```python
from functools import wraps

def check_int(func):
    @wraps(func)
    def wrap(num):
        if type(num) != int:
            raise TypeError("num is not int")
        return func(num)

    return wrap


@check_int
def add_one(num):
    return 1 + num


if __name__ == "__main__":
    print(add_one(10))
```

1. check_int是一个高阶函数，由于接收和返回一个函数，因而也是一个装饰器
2. @xxx是一个语法糖
3. 使用functools.wraps来保留原函数的签名

