/* Disable foreign keys */
PRAGMA foreign_keys = 'off';

/* Begin transaction */
BEGIN;

/* Database properties */
PRAGMA auto_vacuum = 0;
PRAGMA encoding = 'UTF-8';
PRAGMA page_size = 4096;

/* Drop table [blog_article] */
DROP TABLE IF EXISTS [main].[blog_article];

/* Table structure [blog_article] */
CREATE TABLE [main].[blog_article](
  [id] integer PRIMARY KEY AUTOINCREMENT NOT NULL, 
  [title] varchar(32) NOT NULL, 
  [summary] varchar(64), 
  [content] text, 
  [pic] varchar(100), 
  [pub_date] date NOT NULL);

/* Empty table [blog_article] */
DELETE FROM
  [main].[blog_article];

/* Table data [blog_article] Record count: 5 */
INSERT INTO [blog_article]([rowid], [id], [title], [summary], [content], [pic], [pub_date]) VALUES(1, 1, '测试', '测试图片上传', '测试图片上传

充数内容
充数内容
充数内容
充数内容
充数内容
充数内容
充数内容
充数内容
充数内容
充数内容
充数内容', 'article_pic/2-160515225321525.jpg', '2019-09-25');
INSERT INTO [blog_article]([rowid], [id], [title], [summary], [content], [pic], [pub_date]) VALUES(2, 2, 'Python From Wikipedia', 'For other uses, see Python.', 'Python is an interpreted, high-level, general-purpose programming language. Created by Guido van Rossum and first released in 1991, Python''s design philosophy emphasizes code readability with its notable use of significant whitespace. Its language constructs and object-oriented approach aims to help programmers write clear, logical code for small and large-scale projects.

Python is dynamically typed and garbage-collected. It supports multiple programming paradigms, including procedural, object-oriented, and functional programming. Python is often described as a "batteries included" language due to its comprehensive standard library.

Python was conceived in the late 1980s as a successor to the ABC language. Python 2.0, released 2000, introduced features like list comprehensions and a garbage collection system capable of collecting reference cycles. Python 3.0, released 2008, was a major revision of the language that is not completely backward-compatible, and much Python 2 code does not run unmodified on Python 3. Due to concern about the amount of code written for Python 2, support for Python 2.7 (the last release in the 2.x series) was extended to 2020. Language developer Guido van Rossum shouldered sole responsibility for the project until July 2018 but now shares his leadership as a member of a five-person steering council.

Python interpreters are available for many operating systems. A global community of programmers develops and maintains CPython, an open source[32] reference implementation. A non-profit organization, the Python Software Foundation, manages and directs resources for Python and CPython development.

History:
Python was conceived in the late 1980s by Guido van Rossum at Centrum Wiskunde & Informatica (CWI) in the Netherlands as a successor to the ABC language (itself inspired by SETL), capable of exception handling and interfacing with the Amoeba operating system.[8] Its implementation began in December 1989. Van Rossum continued as Python''s lead developer until July 12, 2018, when he announced his "permanent vacation" from his responsibilities as Python''s Benevolent Dictator For Life, a title the Python community bestowed upon him to reflect his long-term commitment as the project''s chief decision-maker. In January, 2019, active Python core developers elected Brett Cannon, Nick Coghlan, Barry Warsaw, Carol Willing and van Rossum to a five-member "Steering Council" to lead the project.

Python 2.0 was released on 16 October 2000 with many major new features, including a cycle-detecting garbage collector and support for Unicode.

Python 3.0 was released on 3 December 2008. It was a major revision of the language that is not completely backward-compatible. Many of its major features were backported to Python 2.6.x and 2.7.x version series. Releases of Python 3 include the 2to3 utility, which automates (at least partially) the translation of Python 2 code to Python 3.

Python 2.7''s end-of-life date was initially set at 2015 then postponed to 2020 out of concern that a large body of existing code could not easily be forward-ported to Python 3. In January 2017, Google announced work on a Python 2.7 to Go transcompiler to improve performance under concurrent workloads.

Features and philosophy:
Python is a multi-paradigm programming language. Object-oriented programming and structured programming are fully supported, and many of its features support functional programming and aspect-oriented programming (including by metaprogramming and metaobjects (magic methods)). Many other paradigms are supported via extensions, including design by contract and logic programming.

Python uses dynamic typing, and a combination of reference counting and a cycle-detecting garbage collector for memory management. It also features dynamic name resolution (late binding), which binds method and variable names during program execution.

Python''s design offers some support for functional programming in the Lisp tradition. It has filter, map, and reduce functions; list comprehensions, dictionaries, sets and generator expressions. The standard library has two modules (itertools and functools) that implement functional tools borrowed from Haskell and Standard ML.

The language''s core philosophy is summarized in the document The Zen of Python (PEP 20), which includes aphorisms such as:
  ● Beautiful is better than ugly
  ● Explicit is better than implicit
  ● Simple is better than complex
  ● Complex is better than complicated
  ● Readability counts

Rather than having all of its functionality built into its core, Python was designed to be highly extensible. This compact modularity has made it particularly popular as a means of adding programmable interfaces to existing applications. Van Rossum''s vision of a small core language with a large standard library and easily extensible interpreter stemmed from his frustrations with ABC, which espoused the opposite approach.

Python strives for a simpler, less-cluttered syntax and grammar while giving developers a choice in their coding methodology. In contrast to Perl''s "there is more than one way to do it" motto, Python embraces a "there should be one—and preferably only one—obvious way to do it" design philosophy. Alex Martelli, a Fellow at the Python Software Foundation and Python book author, writes that "To describe something as ''clever'' is not considered a compliment in the Python culture."

Python''s developers strive to avoid premature optimization, and reject patches to non-critical parts of the CPython reference implementation that would offer marginal increases in speed at the cost of clarity. When speed is important, a Python programmer can move time-critical functions to extension modules written in languages such as C, or use PyPy, a just-in-time compiler. Cython is also available, which translates a Python script into C and makes direct C-level API calls into the Python interpreter.

An important goal of Python''s developers is keeping it fun to use. This is reflected in the language''s name—a tribute to the British comedy group Monty Python—and in occasionally playful approaches to tutorials and reference materials, such as examples that refer to spam and eggs (from a famous Monty Python sketch) instead of the standard foo and bar.

A common neologism in the Python community is pythonic, which can have a wide range of meanings related to program style. To say that code is pythonic is to say that it uses Python idioms well, that it is natural or shows fluency in the language, that it conforms with Python''s minimalist philosophy and emphasis on readability. In contrast, code that is difficult to understand or reads like a rough transcription from another programming language is called unpythonic.

Users and admirers of Python, especially those considered knowledgeable or experienced, are often referred to as Pythonists, Pythonistas, and Pythoneers.', 'article_pic/400x400.png', '2019-09-25');
INSERT INTO [blog_article]([rowid], [id], [title], [summary], [content], [pic], [pub_date]) VALUES(3, 3, '苹果6月4日凌晨举行年度开发者大会，今年产品会有哪些新变化？', '很可能再次不出现硬件。', '5 月 23 日凌晨，苹果正式向全球媒体寄送今年开发者大会（WWDC 2019）的邀请函。

今年苹果开发者大会的口号是“写代码 脑洞大开”。我们收到的邀请函是深蓝色背景，印着一只脑爆的独角兽 Animoji，四周散落着霓虹灯式样的图标。这种设计可能是为呼应传闻中的 iOS 深色模式。

跟往年一样，整场会议持续五天。不过和消费者直接相关并且对外直播的，仅有当地时间 6 月 3 日早上十点（北京时间 4 日凌晨一点）进行的主题演讲。届时《好奇心日报》也会从圣何塞 McEnery 会议中心现场发回报道。

WWDC 是以发布新操作系统和服务为主的年度会议，外界普遍预测今年会看到 iPhone、 iPad 和 iPod touch 的 iOS 13，Mac 的 macOS 10.15，以及 Apple Watch 的 watchOS 6。另外，3 月推出了新的电视、游戏和新闻订阅服务，或许届时能看到更多消息。

至于新硬件，出现的概率很低。本周二苹果才升级了 MacBook Pro 13 与 15 英寸产品，此举很可能就是为了不干扰 WWDC 上新发布的服务。这也从一个侧面印证今年 WWDC 对苹果的重要性。

在年初同 CNBC 的采访中，苹果 CEO 蒂姆·库克强调了服务业务的重要性，并表示“即便在中国市场应用商店也创下了季度纪录……这是公司另一种发展方式。”苹果正试图通过提高软件服务收入来弥补 iPhone 销量下滑造成的营收缺口。

本月初，苹果发布的今年前三个月业绩报告显示， 其 App Store、 Apple Music、云服务、 AppleCare、 Apple Pay 和 App Store 搜索广告业务中均实现了两位数的收入增长，总体毛利率达到 63.8%。其中 3 月单月服务收入占总收入的比重甚至达到 20%、贡献了 1/3 毛利润。与此同时，五大业务地理分区里有四个创下服务收入新高。

目前距离开发者大会举行还有 12 天，我们整理了一些已有消息传出的产品和服务：

已有的信息显示，iOS 13 将采用类似于 macOS Mojave 中添加的深色模式，iPhone 和 iPad 或将都有新的应用打开、切换、关闭的过场动画。首屏向右滑出现的插件页看起来会更简洁。苹果预计会继续优化 iOS，使其在旧设备上的体验更好。

包括事项提醒（Reminder）、健康、图书、地图、邮件等苹果自带应用将得到更新。iMessage 会升级成类似 WhatsApp 的聊天应用，用户可以设置头像和显示名称。聊天界面设有一个专门的菜单，可以发送 Animojis 表情包。

更新后的地图应用可以更方便地设置常用目的地，如家庭或公司，这点和 Google 地图及高德、百度等导航应用类似。苹果还打算为 Safari 浏览器添加下载管理功能。

输入法方面，彭博社称苹果正在测试滑动输入，这与 Android 手机上的选项类似，可能与 SwiftKey 等第三方 iPhone 输入法竞争。健康应用用户界面和交互体验全新设计，首页能呈现比现在更多的身体数据。月经周期跟踪的时间范围预计将变得更全面。

屏幕时间是苹果用来控制设备使用的工具，允许父母设定孩子在一定时期内可以联系的对象。

iPad 有一些独有功能，包括更新的多任务界面，首屏用户界面微调。对于试图成为下一代个人电脑，但一直不能提供足够便利生产力的 iPad 来说，多任务、应用间的协同操作太需要大改了。

第三方应用 Duet Display 把 iPad 变成 mac 外接显示器，iOS 13 下的 iPad 有可能自带该功能。

彭博社爆料称，今年 Mac 最大的变化是可以运行 iPad 应用。更新后的软件开发工具包能让开发者修改现有的 iPad 应用程序，新开发的应用 —— Mac 和 iPad 版本 —— 共享底层代码、减少开发流程。

不过开发者仍需要分别在 iOS 和 Mac 应用商店提交相关应用。苹果预计会在接下来的一年进一步整合开发和发布流程。2020 年 WWDC 前 iPhone 应用可能也可以运行在 Mac 上，并且 iPhone、 iPad 和 Mac 应用最终将合并成单一的下载模式。这或许也意味着两大应用商店到时候也会整合。

另外，苹果今年会为用户带去全新、独立的音乐应用，后者将从现在的 iTunes Mac 版应用中剥离出来。

相比 Mac 和 iOS 之间的关系愈发紧密，watchos 则会较之前更独立于 iOS，不再仅作为 iPhone 配件存在。

具体而言，苹果可能会发布一个新的手表应用商店，用户可以直接脱离手机直接在手表上下载、安装应用。语音备忘录、有声书、计算器将单独出现。苹果还会带来多款新的虚拟表盘和两个和健康有关的新应用。

3 月，苹果差不多搬来半个好莱坞的明星为它新的电视订阅服务 Apple TV+ 站台。它沿用 Netflix 模式，推出自制内容，用户直接付费。

原先整合其他视频资源服务的 Apple TV 在当时的发布会上仍存在，不过在 WWDC 上可能看到一些相应的变化，以更突出这一全新服务。根据之前消息，苹果计划投资 10 亿美元拍十部原创剧。

题图/苹果', 'article_pic/20190523143651r3RcjEXCflTbKeLd.jpg', '2019-09-25');
INSERT INTO [blog_article]([rowid], [id], [title], [summary], [content], [pic], [pub_date]) VALUES(4, 4, 'Facebook 计划推加密货币，不需银行账户即可交易', '但这件事不一定能成。', 'BBC 消息称，Facebook 计划在明年一季度推出一款名为 GlobalCoin 的加密货币。该公司准备在今年夏天公开更详细的计划，并在年底之前开始测试。

Facebook 去年 5 月首次放出计划做一款加密货币的消息。曾任 Coinbase 董事会成员并于 2012 年至 2014 年间担任 PayPal 总裁的 David Marcus 领导该公司新的区块链部门，项目代号为“天秤座”（Libra）。

一直以来有关加密货币最大的争议在于它的价值不稳定性。Facebook 也考虑到了这一点，因此它计划通过与一篮子现有货币（包括美元，欧元和日元等）挂钩，来防止 GlobalCoin 价值的大幅波动。

简单地来说就是恒定汇率。参考今年 2 月美国最大的金融服务机构摩根大通计划推出的加密数字货币 JPM Coin，就是将它的价值定为固定的“1 美元”，本质上还是建立在现有的美元基础上，伴随着美元的涨跌而产生价值变化。

Facebook 的 GlobalCoin 价值几何目前还不清楚，但可以确定的是该公司已经在与银行业高层接触。

上个月，Facebook 创始人马克·扎克伯格与英国央行行长马克·卡尼 （Mark Carney）见面，双方详细讨论了加密货币可能带来的风险。此外，Facebook 还向美国财政部官员寻求了有关加密货币运营和监管等问题的建议。

最近与 Facebook 接触的还包括西联汇款等在内的多家跨国汇款公司。Facebook，西联汇款和英格兰银行均拒绝发表评论。

根据 Facebook 的计划，GlobalCoin 将会允许那些没有银行账户的人收钱和汇钱。另外，根据 BBC 的说法，Facebook 还希望它能够打破传统金融壁垒，通过降低消费者交易成本与银行竞争，“颠覆传统转账网络”。

但是这一产品能否完成如此宏大的目标很值得怀疑。

首先，GlobalCoin 如果要被设计用于日常交易而非收藏升值，那就必须保证币价稳定。目前看来 Facebook 保证币价稳定的方式是与法币挂钩，恒定汇率，那么归根结底还是在现有金融体系之内运作。

其次，雅虎财经评论文章质疑称，GlobalCoin 与摩根大通的 JPM Coin 一样，并不应该被称为“加密货币”。 

虽然两家公司都以加密货币的名号推出自己的产品，但雅虎财经认为，这么做不过是制造营销噱头。“真正的加密货币是分散的，它的供应和基础设施应该由集体用户群管理，比如矿工、开发商和交易所等。”雅虎财经写道，但 Facebook 的做法是：公司有一个专门的部门在自己的平台上发行和管理硬币，以稳定它与法币的汇率。

因此得出的结论是，“将 GlobalCoin 称为加密货币是错误的，两者几乎毫不相关。GlobalCoin 的性质反而与游戏币、大学生饭卡和电话卡内的预充值更相近。”

最后，以 Facebook 目前的体量和处境来说，发行虚拟货币肯定要遵守现有金融法规。该公司 2016 年底在爱尔兰获得了“电子货币机构”许可证，被允许持证在整个欧盟境内发行和管理虚拟货币。

当然，GlobalCoin 应该也不是一无是处。相比银行和大公司，数字货币最大的吸引力在于支撑它们的区块链技术，该技术可以绕过传统银行网络，减少跨境汇款的时间和成本。

摩根大通币的诞生也是为了代替有数十年历史的 Swift 网络。对于需要完成跨境支付的大型企业客户来说，由于金融机构有交易时限，且各国使用不同的系统，因此有时需要一天以上的时间来进行结算，但使用基于区块链技术的摩根大通币可以在一天中的任何时间段进行实时交易或结算。

但不管怎么说，拥有亿级用户的 Facebook 开发加密货币一定会给整个行业带来不小的影响。

伦敦经济学院研究员加里克·希勒曼（Garrick Hileman）认为，短期内，GlobalCoin 项目可能会是加密货币历史上最重要的一件事。他保守估计，目前全世界大约有 3000 万人在使用加密货币，而相比之下，Facebook 的月活跃用户就有 24 亿。它可以撬动的用户量远多于目前所有加密货币的用户量。

最后，关于 Facebook 为什么要做这件事，区块链行业专家大卫·杰拉德（David Gerard）猜测，该公司是为了获得有价值的支付数据。但大卫·杰拉德也有些疑惑地认为，Facebook 其实没必要专门为此开发一套加密货币系统，一个类似 PayPal 的平台就足以。

雅虎财经认为，Facebook 正在从中国的社交应用微信中获取灵感。依靠社交与支付的结合，微信已经成为了一个“全能型”应用，这种思路对于功能相对单一的 Facebook 来说是一个留住用户的好办法。至于加密货币接下来能否顺利推广，还要看 Facebook 能激起多少资金的加入，如果确实到了动摇现有金融体系的地步，中央银行可能就会重新审视它的存在。

题图：Ryan Thomas Ang on Unsplash', 'article_pic/20190527170800ETMHuZiPrGYX294L.jpg', '2019-09-25');
INSERT INTO [blog_article]([rowid], [id], [title], [summary], [content], [pic], [pub_date]) VALUES(5, 5, '中芯国际将从美股退市，市值不及港股 1/10 是主因', '中芯国际近年在产业发展、资本运作两方面都大动作频频。', '上周五，中芯国际宣布准备主动从纽交所退市。中芯国际是在 2004 年 3 月在港交所、纽交所同时上市的，其上市主体在香港，在纽交所发行的是存托凭证（ADR）。截至上周五 5 月 24 日，中芯国际在港股市值 425 亿港元，在美股市值为 ５.55 亿美元，差距巨大。因此，估值低，交易量低，也成了这次退市的重要原因。

目前，中芯国际是内地规模最大、技术最先进的集成电路晶圆代工厂，是内地唯一能提供 28 纳米制程服务的厂商，也是第一家率先投产 8 寸和 12 寸晶圆产线的公司。

2015－2018 年，中芯国际分别实现营业收入 22.7 亿美元、29.1 亿美元、31.01 亿美元、33.6 亿美元；净利润分别为 2.53 亿美元、3.77 亿美元、1.8 亿美元、0.77 亿美元。

从技术、收入来源地区、资本运作上说，中芯国际近年的经营环境正发生快速变化。

在技术上，由于芯片技术复杂，产业结构高度专业化，可细分为集成电路设计、集成电路制造及封装与测试三个子行业。中芯国际所处的是制造环节，即通过光刻等流程生产出表面上附有晶体管的晶圆片，其制程是以纳米为单位的。目前中芯国际投入量产的最先进制成是 28 纳米工艺，在 2017、2018 年，28 纳米工艺都为中芯国际贡献了超过 10%的收入，2019 年将投入 22 亿美元推动 14 纳米工艺投产。

相比之下，同样是芯片代工厂，台积电在 2018 年量产 7 纳米制程，今年试产 5 纳米制程。可以说，制造环节对于技术和经验的要求是极高的，在短期内中芯国际比较难实现突破性进展。

在收入来源地区上，2017 年，40%的收入来自北美，12.7％来自欧亚区（不含中国），共 52.7%；而在 2018 年，随着中国内地半导体行业发展加快以及国际贸易环境变化，中芯国际北美、欧亚区收入比例下降到 31.6%、9.3%，共 40.9%。

在资本运作上，中芯国际跟国内很多芯片公司一样，近年动作频频。

芯片行业早期投资大、回报期长，而民间资本更倾向于选择回报快的产业。过去，国家层面对于芯片的发展不够重视，因此造成了内地芯片行业长期落后的局面。为了改善这种状况， 2014 年 6 月，国务院发布了《国家集成电路产业发展推进纲要》。同年 9 月，财政部、国开金融、中国烟草等机构牵头成立了国家集成电路产业投资基金股份有限公司，重点支持集成电路制造领域，兼顾设计、封装测试、装备、材料环节。

产业基金自成立以来，先后投资了多个产业链环节中的重点企业。例如在晶圆制造环节，就投资了中芯国际；在封测环节，投资了长电科技、通富微电等。还参与收购了多个海外芯片产业龙头企业，例如安世半导体、芯成半导体 ISSI、豪威 OmniViSion、星科金朋等等。

其中，中芯国际还投资了全球第三大的封测厂商长电科技，整合芯片制造、封测环节，这对于中芯国际未来加快提高芯片性能可能会很重要。制造、封测两个环节的整合，台积电可以说是珠玉在前。

台积电原本主要从事晶圆代工环节，在 2014 年底以 8500 万美元买下高通显示器公司位于龙潭科学园区厂房及附属设施，并于 2015 年建设 INFO WLP 高阶封装生产线。INFO WLP 封装技术使得芯片更薄、性能更优。后来，连续两个制程击败三星，独食苹果 A11、A10 芯片的订单。

题图来源：pixabay', 'article_pic/201905271901366QitBpY0ngldFbcG_KmvobYm.jpg', '2019-09-25');

/* Commit transaction */
COMMIT;

/* Enable foreign keys */
PRAGMA foreign_keys = 'on';
