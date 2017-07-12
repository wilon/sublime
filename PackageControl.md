# Package Control

### 安装 Package Control

* 快捷键安装
`Ctrl+Shift+P `(Mac ⇧⌘P)，输入`ipc`即（Install Package Control），`Enter`等待安装完成。
![](https://github.com/wilon/sublime/raw/master/images/install_package_control.gif)

* 命令安装
``` ctrl+` ```，输入下列代码，`Enter`
```
import urllib.request,os,hashlib; h = 'df21e130d211cfc94d9b0905775a7c0f' + '1e3d39e33b79698005270310898eea76'; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); by = urllib.request.urlopen( 'http://packagecontrol.io/' + pf.replace(' ', '%20')).read(); dh = hashlib.sha256(by).hexdigest(); print('Error validating download (got %s instead of %s), please try manual install' % (dh, h)) if dh != h else open(os.path.join( ipp, pf), 'wb' ).write(by)
```

* 源码包安装
由于 http://packagecontrol.io/ 国内访问一直很慢，所以上面的方法很可能失败，这时可以下载包进行安装。
下载此包 [Package Control.sublime-package](https://github.com/wilon/sublime/raw/master/packages/Package%20Control.sublime-package)，放到目录`[SublimeText目录]/Installed Packages/`（[目录参考](#目录参考)）下，重启就OK。