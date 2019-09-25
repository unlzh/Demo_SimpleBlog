from django.db import models

# Create your models here.

class Article(models.Model):
    """
    文章数据模型
    """
    # 文章标题
    title = models.CharField(max_length=32, default='Title')
    # 文章摘要
    summary = models.CharField(max_length=64, null=True)
    # 文章内容
    content = models.TextField(null=True)
    # 文章图片
    pic = models.ImageField(upload_to='article_pic', null=True)
    # 发表/修改日期
    pub_date = models.DateField(auto_now=True)

    def __str__(self):
        return self.title
