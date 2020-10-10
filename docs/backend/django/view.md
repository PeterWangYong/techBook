# 视图函数

##  定义视图

```python
from django.http import HttpResponse
import datetime

def current_datetime(request):
    now = datetime.datetime.now()
    html = "<html><body>It is now %s.</body></html>" % now
    return HttpResponse(html)
```

1. 第一个参数必须是HttpRequest对象
2. 除少数情况，必须返回一个HttpResponse对象



## 返回错误响应

### 返回HttpResponseNotFound

```python
from django.http import HttpResponse, HttpResponseNotFound

def my_view(request):
    # ...
    if foo:
        return HttpResponseNotFound('<h1>Page not found</h1>')
    else:
        return HttpResponse('<h1>Page was found</h1>')
```

HttpResponseNotFound是HttpResponse的子类，只是错误码不同。

### 抛出Http404异常

```python
from django.http import Http404
from django.shortcuts import render
from polls.models import Poll

def detail(request, poll_id):
    try:
        p = Poll.objects.get(pk=poll_id)
    except Poll.DoesNotExist:
        raise Http404("Poll does not exist")
    return render(request, 'polls/detail.html', {'poll': p})
```

使用raise Http404("Poll does not exist")的方式，django会自动返回标准错误页面

### 定义404.html模板

定义404.html放在template目录，当DEBUG=False将会生效。



### 自定义错误处理视图

```python
handler400 = 'mysite.views.my_custom_bad_request_view'
handler403 = 'mysite.views.my_custom_permission_denied_view'
handler404 = 'mysite.views.my_custom_page_not_found_view'
handler500 = 'mysite.views.my_custom_error_view'
```

配置在URLconf中



## 异步视图

```python
import datetime
from django.http import HttpResponse

async def current_datetime(request):
    now = datetime.datetime.now()
    html = '<html><body>It is now %s.</body></html>' % now
    return HttpResponse(html)
```

使用python async语法，启动ASGI服务器。

