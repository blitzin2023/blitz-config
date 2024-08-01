使用方法
========

操作步骤
--------

- 执行以下命令，将项目克隆到 ~/.blitzin 目录下面

```bash
git clone git@github.com:blitzin2023/blitz-config.git ~/.blitzin
```

- 编辑启动脚本：

系统|启动脚本
----|--------
Ubuntu 20.04.5 LTS (Focal Fossa)|~/.bash_profile
CentOS Linux 7|~/.bashrc
AlmaLinux 9.2|~/.bashrc

增加以下代码段：

```bash
# Source blitzin definitions
if [ -f ~/.blitzin/bashrc ]; then
	. ~/.blitzin/bashrc
fi
```

- 编辑 ~/.vimrc 文件，增加以下代码段：

```VimL
source ~/.blitzin/all.vim
```

- 执行以下命令，添加 .vim 软链接

```bash
ln -s ~/.blitzin/vim/ ~/.vim
```

调试
----

若z命令不生效，手动执行`. ~/.blitzin/bashrc`，根据报错进行调试


安装 Lua
--------

访问 Lua 官网下载页面：[Lua 官网下载](https://www.lua.org/download.html)


```bash
curl -L -R -O https://www.lua.org/ftp/lua-5.4.7.tar.gz
tar zxf lua-5.4.7.tar.gz
cd lua-5.4.7
make all test
make install
```
