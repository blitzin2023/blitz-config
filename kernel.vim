
""" 配置项目级vimrc配置
auto bufread /home/centos/git/kernel_rk3588/kernel/* so /home/centos/git/kernel_rk3588/kernel/.vimrc
let $KDIR="/home/centos/git/kernel_D9_CRRC/linux5.10"
if filereadable("$KDIR/.vimrc")
    auto bufread $KDIR so $KDIR/.vimrc
endif
