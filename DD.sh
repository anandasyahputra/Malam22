#!/bin/bash

# verbose aliases
alias rm="rm -vi" \
    cp="cp -iv" \
    mv="mv -iv" \
    ln="ln -v" \
    less="less -I" \
    mkd="mkdir -pv"

# git aliases
alias g="git" \
    ga="git add" \
    gp="git push" \
    gs="git status" \
    gc="git commit"

# ls aliases
alias l="ls -A" \
    ll='ls -alF'

# colorize aliases
alias ls='ls --color=auto' \
    grep='grep --color=auto' \
    fgrep='fgrep --color=auto' \
    egrep='egrep --color=auto'

# cd aliases
alias ..="cd .." \
    ...="cd ../.." \
    ....="cd ../../.." \
    cfg="cd $HOME/.config" \
    chd="cd $HDD" \
    cco="cd $HDD/Code" \
    cdd="cd $HDD/Documents" \
    cdt="cd $HDD/Code/dotfiles" \
    csc="cd $HDD/screenshots" \
    cwal="cd $HDD/wallpapers"

# ranger aliases
alias rh="ranger $HOME" \
    rfg="ranger $HOME/.config" \
    rdo="ranger $HOME/Downloads" \
    rr="ranger $HDD" \
    rbo="ranger $HDD/books" \
    rco="ranger $HDD/Code" \
    rdt="ranger $HDD/Code/dotfiles" \
    rim="ranger $HDD/Images" \
    rd="ranger $HDD/Documents" \
    rmo="ranger $HDD/movies" \
    rsc="ranger $HDD/screenshots" \
    rwal="ranger $HDD/wallpapers"

# pacman aliases
alias p="doas pacman" \
    lspacs="pacman -Qi | awk '/^Name/{name=$ 3} /^Installed Size/{print $ 4$ 5, name}' | sort -hr" \
    lsorphan="pacman -Qtdq"


# mining
alias eth="ethminer -P stratum://0x136c85ede98a3f16e8789b4039244edb695dcc85.Worker:@asia1.ethermine.org:4444 -R --display-interval 30 --HWMON 1" \
    cth="ethminer -P stratum://0x136c85ede98a3f16e8789b4039244edb695dcc85.rx580@cthpool.net:8008"

# program aliases
alias v="nvim" \
    pip="pip3" \
    goo="tuxi" \
    high="highlight --out-format=ansi" \
    ka="killall" \
    yout="straw-viewer" \
    sudb="doas updatedb" \
    r="ranger" \
    cls="clear" \
    btop="bpytop" \
    python="python3" \
    sv="doas nvim" \
    sn="doas -E nvim" \
    trr="transmission-remote" \
    screenkey="screenkey -s small" \
    alacritty="alacritty -t Alacritty" \
    startx="startx ~/.config/x11/xinitrc" \
    rw="feh --bg-fill --randomize $HDD/ChrisWallpapers" \
    android-studio="nohup studio.sh </dev/null &>/dev/null &"

# work
alias proj="cd $HDD/Code/Attendance-Manager/; git status" \
    ccp="cd $HDD/Code/cp" \
    caoc="cd $HDD/Code/cp/aoc" \
    cler="cd $HDD/Code/cp/euler" \
    cses="cd $HDD/Code/cp/cses" \
    pixel-3a="$HOME/Android/Sdk/emulator/emulator -avd Pixel_3a_API_28 -gpu host" \
    build="adb install $HDD/Code/Attendance-Manager/app/build/outputs/apk/debug/app-debug.apk" \
    pixel-3xl="$HOME/Android/Sdk/emulator/emulator -avd Pixel_3_XL_API_30 -gpu host" \
    cout="cd /mnt/Seagate/Code/Attendance-Manager/app/build/outputs/apk/debug"

# misc
alias s="doas" \
    pipup="pip list --outdated | tail -n +3 | awk '{print $ 1}' | xargs -r -i'{}' pip install --upgrade {} || true" \
    pop="popd" \
    push="pushd" \
    list="l | grep -i" \
    fig="figlet -f ansishadow" \
    caps="xdotool key Caps_Lock" \
    usage="du -ah --max-depth=1 | sort -rh" \
    recordscreen="ffmpeg -f x11grab -an -s hd1080 -r 25 -v:b 23000 -i :0.0 -g 1 -q:v 0.1 -vcodec libxvid $HDD/Screenshots/screenCapture.mp4" \
    alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
