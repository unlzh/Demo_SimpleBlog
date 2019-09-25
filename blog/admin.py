from django.contrib import admin
from .models import Article

# Register your models here.
class ArticleAdmin(admin.ModelAdmin):
    """
    后台管理配置
    """
    # 配置文章列表显示字段
    list_display = ('title', 'summary', 'pub_date',)
    # 配置日期过滤器
    list_filter = ('pub_date',)

admin.site.register(Article, ArticleAdmin)
