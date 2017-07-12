@echo Off
:START
CLS
echo *=========================================================================*
echo *                        注意: 该bat文件必须和sublime_text.exe在同级目录  *
echo *                            [A]添加右键菜单                              *
echo *                            [D]删除右键菜单                              *
echo *                            [Q]退出                                      *
echo *                                                                         *
echo *=========================================================================*
Set /P Choice=　　　　　　　请选择要进行的操作 (A/D/Q) ，然后按回车：
If /I "%Choice%"=="A" Goto :ADD
If /I "%Choice%"=="D" Goto :DEL
If /I "%Choice%"=="Q" Exit

START

:ADD
CLS
set str=%~dp0
echo Windows Registry Editor Version 5.00> tmp.reg
echo [HKEY_CLASSES_ROOT\*\shell]>> tmp.reg
echo [HKEY_CLASSES_ROOT\*\shell\SublimeText]>> tmp.reg
echo @="用Sublime Text打开">> tmp.reg
echo "Icon"="\"%str:\=\\%\\sublime_text.exe\",0">> tmp.reg
echo [HKEY_CLASSES_ROOT\*\shell\SublimeText\Command]>> tmp.reg
echo @="\"%str:\=\\%\\sublime_text.exe\" \"%%1^\"">> tmp.reg

echo [HKEY_CLASSES_ROOT\Directory\shell\sublime]>> tmp.reg
echo @="添加到Sublime Text工程项目">> tmp.reg
echo "Icon"="\"%str:\=\\%\\sublime_text.exe\",0">> tmp.reg
echo [HKEY_CLASSES_ROOT\Directory\shell\sublime\Command]>> tmp.reg
echo @="\"%str:\=\\%\\sublime_text.exe\" \"%%1^\"">> tmp.reg

echo [HKEY_CLASSES_ROOT\Directory\Background\shell\sublime]>> tmp.reg
echo @="添加到Sublime Text工程项目">> tmp.reg
echo "Icon"="\"%str:\=\\%\\sublime_text.exe\",0">> tmp.reg
echo [HKEY_CLASSES_ROOT\Directory\Background\shell\sublime\Command]>> tmp.reg
echo @="\"%str:\=\\%\\sublime_text.exe\" \"%%V^\"">> tmp.reg
echo *=========================================================================*
echo *                                                                         *
echo *   正在将生成的注册信息写入注册表，请点击“是”键钮！                      *
echo *                                                                         *
echo *=========================================================================*
tmp.reg
del tmp.reg
GOTO :START

:DEL
echo Windows Registry Editor Version 5.00> tmp.reg
echo [-HKEY_CLASSES_ROOT\*\shell\SublimeText]>> tmp.reg
echo [-HKEY_CLASSES_ROOT\Directory\shell\sublime]>> tmp.reg
echo [-HKEY_CLASSES_ROOT\Directory\Background\shell\sublime]>> tmp.reg
tmp.reg
del tmp.reg
GOTO :START