# 使用方法
- 新建 ~/.blitzin 文件夹，把项目克隆到 ~/.blitzin 下面

- 编辑 ~/.bashrc 文件，增加以下代码段：

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
- 执行以下命令添加 .vim 软链接
```
ln -s ~/.blitzin/vim/ ~/.vim
```
