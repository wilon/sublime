# Sublime

收集 SublimeText 主题插件、汉化、使用技巧等。

建议使用 Sublime Text 3，此项目不进行 Sublime Text 2 的兼容。

阅读此文档您可能需要注意：

- `${packages}` 为菜单栏 Preferences -> Browse Packages (首选项-浏览程序包) 所打开的文件位置
    OSX: `~/Library/Application\ Support/Sublime\ Text\ 3/Packages/`
    Windows: `%APPDATA%\Sublime Text 3\Packages\`
    Linux: `~/.config/sublime-text-3/Packages/`

## 开始使用

- [https://www.sublimetext.com/](https://www.sublimetext.com/) - 官网
- [https://packagecontrol.io/](https://packagecontrol.io/) - 包管理器

1. 下载安装 Sublime，下一步就行。

2. 安装包管理器 Package Control [介绍](https://github.com/wilon/sublime/blob/master/PackageControl.md#package-control)

    [安装方法](https://github.com/wilon/sublime/blob/master/PackageControl.md#安装-package-control)

    [如何使用](https://github.com/wilon/sublime/blob/master/PackageControl.md#使用-package-control)

## 常见问题

- Package Control 安装失败怎么办？
    请选择 [源码包安装](https://github.com/wilon/sublime/blob/master/PackageControl.md#安装-package-control)

- 如何安装主题？ 如何安装插件？ 如何安装包？
    [请使用 Package Control](https://github.com/wilon/sublime/blob/master/PackageControl.md#package-control)，`Ctrl (Command)+Shift+P` -> `Package Control: Install Package` -> 包名 -> 确认
    其他安装方法1. 若是.sublime-package包文件，放到`${packages}/../Installed Packages/`下即可
    其他安装方法2. 若是.py源码文件，放到`${packages}/`下即可

- Package Control 包列表加载失败或太慢如何解决？
    [安装包失败或太慢解决办法](https://github.com/wilon/sublime/blob/master/PackageControl.md#package-control-安装插件失败或太慢解决办法)

- 如何汉化？
    安装包 `ChineseLocalizations` 即可

- Windows 右键没有`用Sublime Text打开`的菜单如何解决？
    下载 [右键菜单工具](https://github.com/wilon/sublime/raw/master/download/win_right_click_menu.bat)，放到**sublime_text.exe**同级目录下，双击运行，按提示运行即可

- OSX 命令行Terminal如何调用Sublime？
    在Terminal输入如下代码：
    `ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin`
    即可用`subl somefile/dir` 调用

----

### 目录参考

SublimeText目录，即``` Preferences -> Browse Packages ```所打开的位置的上一级目录

```
 --- SublimeText目录
  | -- Backup
  | -- Cache
  | -- Index
  | -- Installed Packages
  | -- Local
  | -- Packages             # ${packages}
```






