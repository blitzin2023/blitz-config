# 使用方法
### 操作步骤
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
so ~/.blitzin/common.vim
so ~/.blitzin/kernel.vim
```
- 执行以下命令，添加 .vim 软链接
```bash
ln -s ~/.blitzin/vim/ ~/.vim
```
