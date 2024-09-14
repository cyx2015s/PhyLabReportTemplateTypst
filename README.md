# PhyLabReportTemplateTypst
普通物理实验Ⅱ的混合实验报告Typst模板
## 介绍
对普通物理实验Ⅱ的混合实验报告Word模板的Typst复刻，供希望使用Typst写报告的同学使用。
## 使用
将模板文件放置在任意能够引用到的位置，此处以放置在同一文件夹下为例
```
PhyReport/
├── main.typ
└── phylab.typ
```

在`main.typ`中输入：
```typst
#import "phylab.typ": phylab

#show: phylab.with(
  name: "这是一个实验名称",
  instructor: "指导教师姓名",
  class: "混合2301",
  author: "张三", 
  author-id: "1145141919",
  date: datetime(year: 2025, month: 1, day: 1),
  week: "第114周",
  am-pm: "上午",
)

// 此处填写正文，如：

= 实验综述
（自述实验背景和原理，不超过 300 字，20 分）

= 实验内容
（数据处理、结果与误差分析、实验结论，50 分）

= 实验拓展
（解答‘拓展题’，一般不超过 1000 字，30 分）

= 参考文献
（标注引用并自拟二级标题）

```


亦可以直接更改`phylab.typ`中`phylab`函数参数中部分较为固定的内容，如姓名、学号、班级等等。