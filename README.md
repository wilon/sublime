# sublime

收集 SublimeText 插件、使用技巧等。

建议使用 Sublime Text 3，此项目不进行 Sublime Text 2 的兼容。

# 安装 Sublime Text

- [https://www.sublimetext.com/](https://www.sublimetext.com/) - 官网
- [https://packagecontrol.io/](https://packagecontrol.io/) - 插件管理器

1. 下载安装 Sublime

    https://www.sublimetext.com/3，不再敖述，下一步就行。

2. 安装插件管理器 Package Control

    * 命令安装:
    ``` ctrl+` ```，输入下列代码，`Enter`
    ```
    import urllib.request,os,hashlib; h = 'df21e130d211cfc94d9b0905775a7c0f' + '1e3d39e33b79698005270310898eea76'; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); by = urllib.request.urlopen( 'http://packagecontrol.io/' + pf.replace(' ', '%20')).read(); dh = hashlib.sha256(by).hexdigest(); print('Error validating download (got %s instead of %s), please try manual install' % (dh, h)) if dh != h else open(os.path.join( ipp, pf), 'wb' ).write(by)
    ```

    * 源码包安装：
        由于 http://packagecontrol.io/ 国内访问一直很慢，所以上面的方法很可能失败，这时可以下载包进行安装。
        下载包 [Package Control.sublime-package](https://github.com/wilon/sublime/raw/master/packages/Package Control.sublime-package)，放到目录`[SublimeText目录]/Installed Packages/`[^directory]  下，重启就OK。

----
[^directory]: SublimeText目录，即``` Preferences -> Browse Packages ```所打开的位置的上一级目录
```
 --- SublimeText目录
  | -- Backup
  | -- Cache
  | -- Index
  | -- Installed Packages
  | -- Local
  | -- Packages
```






