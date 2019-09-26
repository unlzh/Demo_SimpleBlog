# Demo_SimpleBlog
基于`Python 3.7`和`Django 2.2`的简单博客应用，包含博客主页，文章详情页以及后台文章管理。

## 运行演示

博客主页：

![博客主页](https://github.com/unlzh/Demo_SimpleBlog/raw/master/blog/static/images/bloghome.png)

文章详情页：

![文章详情页](https://github.com/unlzh/Demo_SimpleBlog/raw/master/blog/static/images/articlepage.png)

后台登录：

![后台登录](https://github.com/unlzh/Demo_SimpleBlog/raw/master/blog/static/images/login.png)

后台文章列表：

![后台文章列表](https://github.com/unlzh/Demo_SimpleBlog/raw/master/blog/static/images/articlelist.png)

## 部署

1. 创建一个虚拟环境

2. 安装 Django 及依赖

   ```bash
   pip install -r requirements.txt
   ```

3. 将 settings.py 里的 *SECRET_KEY*  修改成你自己的，我是读取环境变量的配置

4. 创建数据库和数据表，默认使用sqlite3

   ```bash
   python manage.py migrate
   ```

5. 创建超级用户

   ```bash
   python manage.py createsuperuser
   ```

6. 开启服务器

   ```bash
   python manage.py runserver
   ```

   访问 **127.0.0.1:8000**

7. 登录后台 **127.0.0.1:8000/admin** 输入超级用户的账号密码便可添加文章。或者数据库导入测试数据 test.sql ，效果如运行演示

## 相关

[开发笔记](https://unlzh.github.io/2019-Python/Django%E5%BF%AB%E9%80%9F%E5%85%A5%E9%97%A8%E2%80%94%E2%80%94%E5%BC%80%E5%8F%91%E7%AE%80%E5%8D%95%E7%9A%84%E5%8D%9A%E5%AE%A2%E5%BA%94%E7%94%A8/)

## License

MIT

