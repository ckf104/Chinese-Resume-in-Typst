#import "template.typ": *

// 设置图标, 来源: https://fontawesome.com/icons/
// 如果要修改图标颜色, 请手动修改 svg 文件中的 fill="rgb(38, 38, 125)" 属性
// 例如可以使用 VS Code 的全局文本替换功能
#let faAward = icon("icons/fa-award.svg")
#let faBuildingColumns = icon("icons/fa-building-columns.svg")
#let faCode = icon("icons/fa-code.svg")
#let faEnvelope = icon("icons/fa-envelope.svg")
#let faGithub = icon("icons/fa-github.svg")
#let faGraduationCap = icon("icons/fa-graduation-cap.svg")
#let faLinux = icon("icons/fa-linux.svg")
#let faPhone = icon("icons/fa-phone.svg")
#let faWindows = icon("icons/fa-windows.svg")
#let faWrench = icon("icons/fa-wrench.svg")
#let faWork = icon("icons/fa-work.svg")

// 主题颜色
#let themeColor = rgb(38, 38, 125)

// 设置简历选项Stable versions available at Open VSX.
#show: resume.with(
  // 字体基准大小
  size: 10pt,
  // 标题颜色
  themeColor: themeColor,
  // 控制纸张的边距
  top: 1.5cm,
  bottom: 2cm,
  left: 2cm,
  right: 2cm,

  // 如果需要姓名及联系信息居中, 请删除下面关于头像的三行参数, 并取消headerCenter的注释
  //headerCenter : true,
  
  // 如果不需要头像, 则将下面三行的参数注释或删除
  photograph: "profile.jpg",
  photographWidth: 5em,
  gutterWidth: 2em,
)[

= 陈克发

#info(
  color: themeColor,
  (
    // 其实 icon 也可以直接填字符串, 如 "fa-phone.svg" 
    icon: faPhone,
    content: "(+86) 18810907230"
  ),
  (
    icon: faBuildingColumns,
    content: "北京大学",
  ),
  (
    icon: faGraduationCap,
    content: "计算机体系结构",
  ),
  (
    icon: faEnvelope,
    content: "2301213205@pku.edu.cn",
    link: "mailto:2301213205@pku.edu.cn"
  ),
  (
    icon: faGithub,
    content: "github.com/ckf104",
    link: "https://github.com/ckf104",
  ),
)
][

]

== #faGraduationCap 教育经历

#sidebar(withLine: true, sideWidth: 20%)[
  2023.09 - 至今  

  2019.09 - 2023.06
][
  *北京大学* · 计算机学院硕士 · 计算机系统结构所
  
  *北京大学* · 信息科学与技术学院 · 计算机科学与技术
  
  GPA 3.72/4.00 · *Rank: 30%*, 获得大二学年的奔驰奖学金, *优秀本科毕业论文*
]

// == #faWork 实习经历

// 在这里添加你的实习经历

== #faCode 项目和实习经历

#item(
  [*UE5 制作合成数据与三维重建,*],
  [*光轮智能*],
  date[ 2024 年 03 月 – 2024 年 07 月 ]
)

- 使用 UE5 生成合成数据和渲染三维重建的场景为自动驾驶算法训练提供支持
- *拓展 UE 的渲染管线*，添加自定义的 mesh pass processor 和 shader, 并在 RDG 中注册新的渲染 pass, 使 UE 额外输出一张应用自定义的 32bits 模板值的颜色纹理, 支持应用的语义分割需求
- 使用 *Niagara* 插件实现和优化 *Gaussian Splatting* 重建后的场景渲染, 对于三百万个粒子点的场景, 使用 3 阶球谐系数描述椭球颜色时也能达到近 100 帧的渲染速度
- *拓展 UE 的资产管理模块*, 在编辑器中能够将算法部门训练好的 3D 点云文件自动转化为纹理材质, 并且能够脚本化批量处理

#item(
    [*PBRT4 源码阅读*],
    [],
  date[ 2024 年 08 月 – 2024 年 10 月 ]
)
- 熟悉*色彩空间理论*以及*光谱渲染*, 理解光谱渲染和 RGB 渲染的异同
- 深刻理解基于蒙特卡洛采样的*路径追踪和体渲染算法*, 以及它们在工程实现上的许多优化技巧, 例如 *MIS*, *NEE* 等

#item(
    [*系统软件开发*],
    [],
[]
)
#list(
[阅读了清华 ventus-gpgpu 源码(由 chisel 编写的 GPGPU, 面向 OpenCL 程序, 实现了 SIMT stack, shared memory, barrier 等基本的功能), *对 GPGPU 的工作原理有着深刻的认识*],
[为开源项目 verilator(著名的 systemverilog 模拟器) 贡献了 1000 行左右的代码, 实现了将 systemverilog 的 packed struct 到 C++ 的 struct 的自动转换, 解决了十年之久的 feature request(https://github.com/verilator/verilator/issues/860)],
[参加了第一届全国大学生计算机系统能力大赛操作系统设计大赛, *对 xv6-k210 操作系统进行改进*, 最终实现的操作系统能够在k210硬件平台上支持链接标准C库的应用程序运行。获得二等奖],
[https://github.com/ckf104/user-level-tcp-ip: 使用 C++, 基于 Linux 的监听套接字实现了*用户态的 tcp-ip 协议栈*, 对上层应用提供 POSIX 套接字接口, 能与 Linux/windows 主机直接通信],
[本科毕设基于* LLVM 编译框架*，将论文 VeGen: a vectorizer generator for SIMD and beyond 中基于 SLP 和 pattern match 的向量化方法移植到 RISC-V 平台上，被评为优秀本科毕业论文]
)

== #faWrench 基础技能

- 熟练掌握 *C++*, *Python* 和 *OpenGL*, 熟练使用 *git* 和 *docker* 等基础开发工具, 非常熟悉 *Linux* 开发环境
- 能流畅阅读英文技术文档, 通过 *CET-6 (575分)* 考试
- 日语通过 *N1 (163分)* 考试