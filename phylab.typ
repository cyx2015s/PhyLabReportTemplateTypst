#let phylab(
  name: "实验名称",
  instructor: "指导教师",
  class: "班级",
  author: "姓名",
  author-id: "学号",
  date: datetime.today(),
  week: 1,
  am-pm: "上午",
  body
) = {
  let 小初 = 36pt
  let 三号 = 16pt
  let 四号 = 14pt
  let 小四 = 12pt
  // 设置文档元数据
  set document(title: author + "-"+ name, author: author)
  // 设置字体
  set text(font: "SimSun", size: 四号)
  show raw: set text(font: ("Consolas", "SimSun"), size: 10pt)
  show heading.where(level: 1): set heading(numbering: "一、")
  show heading.where(level: 1): set text(stroke: 0.03em)
  // 设置纸张大小与页边距
  set page(paper: "a4", margin: (top: 2.54cm, bottom: 2.54cm, left: 1.91cm, right: 1.91cm), numbering: (..args) => {
    let ind = args.pos().at(0)
    if ind > 1 {
      "第" + str(args.pos().at(0) - 1) + "页" 
    }
  })

  // 封面部分开始
  set text(stroke: 0.03em, size: 三号)
  set align(center)
  set box(stroke: (bottom: 1pt), inset: (bottom: 20%, left: -10%, right: -10%))
  v(1fr)
  text("普通物理学实验Ⅱ\n电子实验报告\n ", size: 小初)
  v(1fr)
  [#box("实验名称：", stroke: none) #box(name, width: 8cm)]
  v(1cm)
  [#box("指导教师:", stroke: none) #box(instructor, width: 8cm)]

  set text(size: 四号)
  v(.9fr)
  [#box("班级:", stroke: none) #box(class, width: 9.4cm)]
  v(.1cm)
  [#box("姓名:", stroke: none) #box(author, width: 9.4cm)]
  v(.1cm)
  [#box("学号:", stroke: none) #box(author-id, width: 9.4cm)]

  v(0.5fr)
  [#box("实验日期：", stroke: none) #box(str(date.year()), width: 3em) #box("年", stroke: none) #box(str(date.month()), width: 1.5em) #box("月", stroke: none) #box(str(date.day()), width: 1.5em) #box("日", stroke: none) #h(1cm) #box("星期", stroke: none) #box("一二三四五六日".clusters().at(date.weekday() - 1), width: 1em) #box(am-pm, stroke: none, width: 2em)]
  v(0.5fr)
  set text(stroke: none)
  align(center, text("浙江大学物理实验教学中心", size: 四号))
  set align(left)
  set text(size: 小四)
  v(1fr)
  // 封面部分结束
  pagebreak()
  body
}

