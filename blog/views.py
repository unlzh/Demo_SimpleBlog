from django.shortcuts import render
from . import models

# Create your views here.

def index(request):
    """
    主页控制器
    :param request: 请求
    :return: 数据库文章数据
    """
    # 获取文章数据集
    articles = models.Article.objects.all()
    # 将文章数据集对象传递给主页
    return render(request, 'index.html', {'articles': articles})

def article_page(request, article_id):
    """
    指定文章页面
    :param request: 请求
    :param article_id: 文章id
    :return: 指定文章对象
    """
    # 根据文章id获取相应的文章对象
    article = models.Article.objects.get(pk=article_id)
    # 文章总量
    count = models.Article.objects.all().count()
    # 将指定的文章对象和id传递给文章详情页面
    return render(request, 'article_page.html', {'article': article, 'count': count})
