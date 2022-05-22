# rime-wubi86-Duckling
86小鸭五笔码表 for 鼠须管(mac:macOS)、小狼毫(Windows)、中州韵(Linux:Ubuntu) 五笔输入法


<b>本库是 Rime 中州韵输入法引擎的一个 86版小鸭五笔的输入方案，支持多平台（Windows、macOS、Linux），非常适合之前在Win下用小鸭五笔的用户！</b>


<img width="500" src="https://github.com/onezg/images-for-github/blob/main/rime-wubi86-duckling/rime-duckling-pifu-macgreen.jpg">

## 一、前言
小鸭五笔，最后的版本：v3.3，采用的词库：窝子极爽词库6.0+

我用小鸭五笔多年之久，深深热爱，具有干净、不弹窗、不收集隐私、码表开放等优点，是我之前最爱的输入法。随着时间流逝，我遇到以下3点问题：

（1）小鸭五笔的创始人，迷迷糊糊，不再更新

（2）Win10/Win11的跌代升级，小鸭五笔表现出来的BUG越来越多

（3）Mac上没有小鸭五笔，对清歌五笔不是很满意

因此，本人整合了此方案，码表使用了小鸭五笔原生词库、支持irey出 π（圆周率） 候选词，支持zvts、zvdl输出特殊符号、罗马符号等。
如果您之前是小鸭五笔用户，遇到过上面我说的3点难处，并且对Rime也有一些了解，那么本人整理的这套 86版小鸭五笔的输入方案 非常适合您！


## 二、文件说明
每个配置文件中有一些注释说明，可以辅助理解。

如果还有其它问题可以在 `issue` 中提出，或者加群（[QQ群：701682740](https://qm.qq.com/cgi-bin/qm/qr?k=MGCxOwYp9GpwMe653vWpPqHmxiYCYM2r&jump_from=webapi)）讨论。

```bash
├── Duckling.chm                            # 小鸭五笔官方手册
├── README.md                               # 说明文档
├── rime.lua                                # 配置文件 - 可以输出系统变量的函数
├── default.custom.yaml                     # 配置文件 - 自定义一些输入法的功能：标点，二三候选等
├── squirrel.custom.yaml                    # 配置文件 - 鼠须管（for macOS）输入法候选词界面
├── weasel.custom.yaml                      # 配置文件 - 小狼毫（for Windows）输入法候选词界面
├── pinyin_simp.dict.yaml                   # 词库文件 - 简体拼音码表 - 五笔中拼音输入需要的
├── pinyin_simp.schema.yaml                 # 输入方案 - 简体拼音
├── wubi86_duckling.schema.yaml             # 输入方案 - 小鸭五笔
├── wubi86_duckling.dict.yaml               # 词库文件 - 小鸭五笔主码表
└── wubi86_duckling_extra.dict.yaml         # 词库文件 - 个人扩展词库
```

## 三、词库说明
小鸭五笔，最后的版本：v3.3，采用的词库：窝子极爽词库6.0+

该词库用到了wubi86_duckling.schema.yaml的码表

## 四、安装

去 [官网下载](https://rime.im/download/)，按步骤安装即可

1. 下载 五笔配置文件 [https://github.com/onezg/rime-wubi86-duckling](https://github.com/onezg/rime-wubi86-duckling)
2. macOS 上的 鼠须管 配置文件存放目录是 `~/Library/Rime`，把下载后的`rime-wubi86-duckling`内的所有文件移到 `Rime` 目录中，
3. 点击状态栏上的输入法图标，下拉菜单中选择 <kbd>部署</kbd> (英文是<kbd>Deploy</kbd>），或者可以直接使用快捷键 <kbd>control</kbd> + <kbd>option</kbd> + <kbd>~</kbd>

> **注意：** `Rime` 目录下的 `Build` 目录是程序生成的，不要把配置文件放在那里面，无视它即可。

目录结构如下：
```bash
~/Library/
└── Rime
    ├── 该项目中的文件
    ├── 该项目中的文件
    ├── 该项目中的文件
    ├── ...
    ├── ...
```


### 2. 小狼毫（Windows）

Windows 中的配置方法：
1. 右击状态栏中的小狼毫输入法图标，选择 <kbd>用户文件夹</kbd>
2. 把该项目中的文件复制到里面
3. 右击状态栏中的小狼毫输入法图标，选择 <kbd>重新部署</kbd> 即可


### 3. ibus-rime (Ubuntu)

执行下面指令安装 `ibus-rime` 输入法

```bash
sudo apt-get install ibus-rime
```

ubuntu 的配置文件目录在 `~/.config/ibus/rime/`

## 五、使用说明

### 1. 临时拼音输入
按<kbd>z</kbd>键可以进入临时拼音输入模式

### 2. 选项菜单
在输入状态时，<kbd>control</kbd> + <kbd>0</kbd> 或者 <kbd>shift</kbd> + <kbd>control</kbd> + <kbd>0</kbd> 弹出菜单

### 3. 特殊系列符号输入
和小鸭五笔一样，输入时先按 zv 键，再输入下列系列符号的编码。可参考：Duckling.chm官方手册

- 圆圈数字 [圆数]	`ys`	①②③④⑤⑥⑦⑧⑨⑩
- 圆圈数字 [圆数]	`yse`	⑪⑫⑬⑭⑮⑯⑰⑱⑲⑳
- 括号数字 [括数]	`ks`	⑴⑵⑶⑷⑸⑹⑺⑻⑼⑽⑾⑿⒀⒁⒂⒃⒄⒅⒆⒇
- 数字点   [点数]	`ds`	⒈⒉⒊⒋⒌⒍⒎⒏⒐⒑⒒⒓⒔⒕⒖⒗⒘⒙⒚⒛
- 中文数字 [中数]	`zs`	㈠㈡㈢㈣㈤㈥㈦㈧㈨㈩
- 单位符号 [单位]	`dw`	㎎ ㎏ ㎜ ㎝ ㎞ ㎡ ㏄ ㏎ ㏑ ㏒ ㏕
- 单位符号 [单位]	`dwe`	㎢ ㎦ ㎟ ㎣ ㎠ ㎤ ㎥ ㎧ ㎨ ㎙ ㎚ ㎛ ㎩ ㎪ ㎫ ㎃ ㎁ ㎂ ㎺ ㎻ ㎼ ㎽ ㎾ ㎿ ㏀ ㏁
- 拼音符号 [拼音]	`py`	āáǎà ōóǒò êēéěè īíǐì ūúǔù ǖǘǚǜü


### 4. 支持 简入繁出（台湾片语）
切换到 台湾片语 模式，不只是简入繁出，一些词汇还会转化为台湾那边的叫法

例如：
- yywr -> 文件 -> 檔案
- vnsf -> 鼠标 -> 滑鼠


### 5. 系统 `时间`、`日期`
输入对应词，获取当前日期和时间
- `date` 输出日期，格式 `2022-05-22` `2022年05月22日`
- `time` 输出时间，格式 `15:19` `15:19:43`

### 6. Lua增强 `计算器` 和 `uuid`
输入对应词，调用计算器和uuid
- `zvzv` 计算器，格式 `zvzv12＊13` 空格输出结果156
- `zvuuid` uuid，格式 `zvuuid` 空格输出随机uuid



## 附：其它相关链接

__配置方案链接__
- [x] Rime 配置说明：https://github.com/LEOYoon-Tsaw/Rime_collections/blob/master/Rime_description.md
- [x] Rime 过滤掉生僻字：https://github.com/rime/weasel/issues/478
- [x] Rime 鼠须管输入法删除生僻字（候选词字体不一样）：https://github.com/ssnhd/rime-rareword
- [x] KyleBing 极点五笔配置方案：https://github.com/KyleBing/rime-wubi86-jidian
- [x] ssnhd 花园明朝字体（Mac缺少生僻字）：https://github.com/ssnhd/rime
- [x] ssnhd Rime皮肤配置详解：https://ssnhd.com/2022/01/06/rime/


__工具链接__
- [x] 五笔码表助手： https://github.com/KyleBing/wubi-dict-editor

__Rime官方链接__
- [x] Rime github 地址： https://github.com/rime
- [x] Rime 输入方案集合： https://github.com/rime/plum( https://github.com/rime/plum)
- [x] Rime 官方五笔方案： https://github.com/rime/rime-wubi 