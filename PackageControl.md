# Package Control

Package Control [https://packagecontrol.io/](https://packagecontrol.io/)，包管理器是 Sublime Text 包管理器

Sublime Text 安装插件就是把包下载到本地引入目录，包可以是.sublime-package文件，也可以是源码文件，包多了就难以管理，所以才诞生了 Package Control。

本项目插件除特殊情况外安装方式都为：

    Ctrl (Command)+Shift+P -> Package Control: Install Package -> 包名 -> 确认

### 安装 Package Control

* 快捷键安装

    `Ctrl (Command)+Shift+P`，输入`ipc`即（Install Package Control），`Enter`等待安装完成。
    [点击查看演示图](https://github.com/wilon/sublime/raw/master/images/install_package_control.gif)

    如果出现的是`Package Control: Install Package`，则说明已经安装成功。

* 命令安装

    ``` ctrl+` ```，输入下列代码，`Enter`
```
import urllib.request,os,hashlib; h = 'df21e130d211cfc94d9b0905775a7c0f' + '1e3d39e33b79698005270310898eea76'; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); by = urllib.request.urlopen( 'http://packagecontrol.io/' + pf.replace(' ', '%20')).read(); dh = hashlib.sha256(by).hexdigest(); print('Error validating download (got %s instead of %s), please try manual install' % (dh, h)) if dh != h else open(os.path.join( ipp, pf), 'wb' ).write(by)
```

* 源码包安装

    由于 http://packagecontrol.io/ 国内访问一直很慢，所以上面的方法很可能失败，这时可以下载包进行安装。
    下载此包 [Package Control.sublime-package](https://github.com/wilon/sublime/raw/master/download/Package%20Control.sublime-package)，放到目录 `${packages}/../Installed Packages/` 下，重启就OK。


### 使用 Package Control

`Ctrl (Command)+Shift+P`，输入如下命令：

```
# 包管理
Package Control: Install Package                # 安装
Package Control: Remove Package                 # 卸载
Package Control: Advanced Install Package
Package Control: Create Package File
Package Control: Disable Package
Package Control: Enable Package
Package Control: Upgrade Package
Package Control: Discover Packages
Package Control: List Packages
Package Control: List Unmanaged Packages
Package Control: Upgrade/Overwrite All Packages
# 包地址管理
Package Control: Add Channel
Package Control: Remove Channel
# 远程包仓库管理
Package Control: Add Repository
Package Control: Remove Repository
# 设置及其他
Preferences: Package Control Settings – Default
Preferences: Package Control Settings – User
Package Control: Grab CA Certs
Package Control: Install Local Dependency
Package Control: Satisfy Dependencies
Package Control: Tests
```

### Package Control 安装插件失败或太慢解决办法

1. `Ctrl (Command)+Shift+P` 打开命令面板
2. 输入 `Package Control: Add Channel`，enter
3. 添加地址

`https://raw.githubusercontent.com/wilon/sublime/master/download/channel_v3.json` （国内速度不稳定）

或 `http://wilon.oschina.io/static/channel_v3.json` （国内很快）

或 本地地址如： `/data/channel_v3.json` 需要下载文件到本地 （快的飞起）

下载json文件地址： [packagecontrol.io 官方下载](https://packagecontrol.io/channel_v3.json)、 [GitHub 下载](https://raw.githubusercontent.com/wilon/sublime/master/download/channel_v3.json)






