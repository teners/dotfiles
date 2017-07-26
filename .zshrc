# Path to your oh-my-zsh installation.
export ZSH=/home/teners/.oh-my-zsh
export VISUAL=vim

ZSH_THEME="tener"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=1

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

plugins=(git vi-mode colored-man-pages pip pylint python pyenv sudo command-not-found fbterm last-working-dir systemd)

# User configuration
export PATH="/bin:/usr/bin:/usr/local/sbin:/usr/local/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/vault/gsla-arm-toolchain/bin"

source $ZSH/oh-my-zsh.sh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias feh='feh -. -d'
alias cp='cp -v'
alias mv='mv -v'
alias rm='rm -v'
alias mkdir='mkdir -pv'
alias topdf='lowriter --convert-to pdf'
alias mntusb='sudo mount /dev/sdb1 /mnt/usb'
alias usb='sudo mount /dev/sdb1 /mnt/usb'
alias openvault='ecryptfs-mount-private'
alias boo="systemctl reboot"

export LIBDIR="FROM_SRC"
export CAS_LIBRARY_VERSION="123"
export CAS_LIBRARY_BRANCH="zlib/caslib4/unizlib"
export CAS_LIBRARY_COMMIT_OR_TAG="4.9.20"
export CAS_LIBRARY_CFLAGS="SMART_CARD=1 SIMECM=1 ADEC=1 ECSA=1 LCS1=1 CASIDS=0x4ae1,0x4ae0,0x2710,0x7be0,0x7be1 SUBS_CHANGED_NOTIFY=1 DUAL=1 UNIVERSAL_DESCRIPTOR=1 ZLIB_HOST_DEVICE_TYPE=0x80 DOUBLE_TUNER_ADEC=1 CAS_SIGNS=202,203,204,205"
export CAS_CMAKE_PARAMETERS="-DCMAKE_CXX_COMPILER=arm-gsla-eabi-g++ -DCMAKE_C_COMPILER=arm-gsla-eabi-gcc -DCAS5=OFF -DCAS4=ON -DUCOS=ON -DATS=ON -DUSTL=ON -DLOGGING=OFF"
alias neoflasher_lcs="cd /vault/lcs/sdk && ./gsla_release/host/bin/neoflasher.py -i /vault/lcs/sdk/gsla_release/config/flashapp.ini -p /dev/ttyUSB0 -b 115200 -B"
alias build_lcs="cd /vault/lcs/sdk && ./build.sh u510 --clean --version=123 --target=app --debug --toolchain-dir='/vault/gsla-arm-toolchain/bin' --lcs1-features='ECD=1 ADEC11=1 DUAL=1' --build-dre"

setopt completealiases

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'

