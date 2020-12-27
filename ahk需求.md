# 脚本开发说明
<!--注释信息-->


## 一、功能需求  

### 空格编辑（ScrollLock ON）
在不占用空格正常功能的前提下，提供组合键功能

  

### 数字编辑（NumLock OFF）
开启数字编辑，分别以字符“nm,.jkluio”映射”0123456789“  





## 二、现有功能

按键|映射按键|功能|功能测试
--|--|--|:--:
**————**|**——————————**|**<font color=gold>光标移动</font>**|**————**
Space+h|Left|光标向左|正常
Space+j|Down|光标向下|正常
Space+k|Up|光标向上|正常
Space+l|Right|光标向右|正常
Space+u|Home|行首、返回顶部|正常
Space+i|End|行尾、返回底部|正常
**————**|**——————————**|**<font color=gold>字符编辑</font>**|**————**
Space+`|~||正常
Space+1|!||<font color=red>异常</font>
Space+2|@||正常
Space+3|#||<font color=red>异常</font>
Space+4|$||正常
Space+5|%||正常
Space+6|^||<font color=red>异常</font>
Space+7|&||正常
Space+8|*||正常
Space+9|(||正常
Space+0|)||正常
Space+-|_||正常
Space+=|+||<font color=red>异常</font>
Space+o|Backspace|退格，删除光标前一个字符|正常
Space+d|Delete|删除|正常
Space+n|Enter|换行|正常
**————**|**——————————**|**<font color=gold>系统功能</font>**|**————**
Space+a|Ctrl+a|全选|正常
Space+s|Ctrl+s|保存|正常
Space+x|Ctrl+x|剪切|正常
Space+c|Ctrl+c|复制|正常
Space+v|Ctrl+v|粘贴|正常
Space+b|OPEN www.baidu.com|打开百度|正常
Space+w|RUN cmd.exe|运行cmd|正常
Space+t|RUN terminal.exe|运行WindowsTerminal|正常
Space+p|RUN powershell.exe|运行powershell|正常
Space+e|Alt+F4|关闭窗口|正常
**————**|**——————————**|**<font color=gold>自定义脚本功能</font>**|**————**
Ctrl+Alt+o||显示作者信息、AHK版本信息|正常
Ctrl+Alt+h||显示帮助手册|未完成
Ctrl+Alt+q||重新加载脚本|正常
j+f、f+j||显示空格编辑、小键盘、大小写开启状态|正常
Alt+9|NumLock|开启、关闭数字编辑|正常
Alt+0|ScrollLock|开启、关闭ScrollLock|正常





## 三、预期效果图

![键盘1](../ahk-code/image/键盘1.png)
![键盘2](../ahk-code/image/键盘2.png)





## 四、添加Windows开机启动

> 1. 保存脚本到本地,如e:/script/ning.ahk
> 2. 为脚本创建快捷方式,将快捷方式文件保存到Windows启动目录下  
C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp

