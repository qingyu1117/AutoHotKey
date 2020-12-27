# 1 AutoHotKey使用说明  
---
## 1.1 AHK版本  
V1.0  
V1.1  
V2.0(Alpha)  

## 1.2 安装AHK  
访问[AHK主页](https://autohotkey.com)下载安装包  
安装过程可选UNICODE货ANSI版本  

## 1.2 创建脚本
任何以.ahk为后缀的文件都为ahk脚本  
可以使用文件编辑器编写脚本内容  

## 1.3 映射表
字符|按键
--|--
\#|Win键
+|Shift键
^|Ctrl键
!|Alt键
&|连接多个按键
## 1.4 快捷键
用于触发某个动作的单个按键或多个组合按键  
### 语法
```ahk
;^代表按键Ctrl,j代表按键j.按下Ctrl+j,发送字符串'My First Script'
;Return代表按键Enter,单行代码时可以省略
;::分隔按键和指令
^j::
    Send, My First Script
Return
```
## 1.5 热字串
通过一个或多个自定义按键,实现任意字符串的输入  
### 语法
```ahk
;依次按下hl并回车,发送字符串'Hello'
;热字串的按键位于一对::中间
;单行代码省略了Return
::hl::Hello
```
```ahk
;不需按下回车即可触发
:*:ga::Go away
```
```ahk
;MsgBox表示弹窗消息框
::dtm::
    MsgBox Don't touch my pad
Return
```

## 1.6 指令
### Send指令
Send用于发送按键到程序中  
语法  
`Send,string`
|元字符|含义|
|--|--|
|+|Shift按键|
|!|Alt按键|
|^|Ctrl按键|
|#|Win按键|
在Send发送的按键中,以上按键需要使用{}进行转义  
```ahk
;up和down用于表示按下或松开按键
Send,{Ctrl down}{Ctrl up}
```
```ahk
;使用小括号用于发送长文本
Send,(
Hello
There have three lines
.
)
```
### Run指令
Run用于打开一个文件,网址,程序等
```ahk
Run,c:\programfile\test.exe
Run,https://www.baidu.com/
```

## 命令(指令)和函数
### 命令(指令)
语法
`Command,参数(变量),参数(变量)`
调用变量时,变量名称前后需要添加%
### 函数
语法
`Function(参数(变量),参数(变量))`
函数有返回值可以赋值给自定义变量
`MyVar:=SubStr("test",11)`
|区别|分隔|参数调用|字符串调用|语句嵌套|基础运算|
|---|----|-------|---------|--------|-------|
|命令|以逗号分隔|前后需要添加%|字符串不需要添加引号|不支持命令嵌套|不支持基础运算|
|函数|以小括号分隔|直接调用|字符串需要添加引号|支持函数嵌套|支持基础运算|

## 代码块
在条件语句中,使用{}表示一段代码块
```ahk
if (MyVar=5)
{
    MsgBox,MyVar is %MyVar%.
    ExitApp
}
```

## 变量
变量可用于命令,函数,表达式中
### 变量赋值
```ahk
;传统赋值
;赋值文本内容
MyVar=string
;赋值变量
MyVar=%MyVar1%
;混合赋值
MyVar=%MyVar2% text1 %MyVar3%
;表达式赋值
MyVar:="Text"
MyVar:=MyVar2
MyVar:=4+34*63/3-5
MyVar:="The value of 5 +" MyVar2 "is:" 5 + MyVar2
```
赋值运算符
赋值运算符|含义
--|--
:=|变量赋值
+=|变量值叠加赋值
-=|变量值相减赋值
.=|追加变量到末尾

# 对象
对象可以理解为数组,基本代表变量的集合,常见类型:索引数组,关联数组,混合数组  
## 创建对象
```ahk
;数组索引号默认从1开始
;中括号定义对象,等同于python列表
MyObject:=["a","h","k"]
Object1:={"screen":"23","color":"red"}
;数组函数定义对象
Object2:=Array("test","obj","hello",233)
;对象函数定义对象
Object3:=Object("where","which","why")
```
## 对象赋值
```ahk
;对象赋值
MyObject["a"]:=111
MyObject.Consistency:=222
;查询对象值
Value:=MyObject["a"]
```
# FAQ
- 什么时候使用百分号%?
  1. 使用命令时,调用大部分自定义参数时必须使用
  2. 使用传统赋值方式赋值变量时,调用的变量需要使用
- 什么时候不使用百分号%?
  1. 调用输入输出等特殊内置变量时,不使用,如:InputVar,OutputVar
  2. 在If语句中,表达式左侧的变量,如:If Var1 < %Var2%
  3. 表达式中的变量,如:Var1:=Var2+324
