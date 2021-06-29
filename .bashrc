#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias java8='/usr/lib/jvm/java-8-openjdk/bin/java'
alias javac8='/usr/lib/jvm/java-8-openjdk/bin/javac'
alias add_shortcut='vim ~/.config/i3/config'
alias epic_time='mplayer -loop 0 /home/sayan/Music/Megalovania.mp3'
alias monitor="sudo netdata;firefox -new-window http://localhost:19999/"
alias bathe-mirrors='sudo reflector --verbose --latest 20 --protocol http --protocol https --sort rate --save /etc/pacman.d/mirrorlist'
alias naked-services='systemctl list-unit-files --state=enabled'
alias bathe-pacman='sudo rm -R /var/lib/pacman/sync/;sudo pacman -Syu;sudo pacman -Syy'
alias gae_start='dev_appserver.py app.yaml'
alias manipulate_speakers='amixer sset Master'
alias mt="[ ! -d '/run/media/sayan/Data/Programmer' ] && (([ ! -d '/run/media/sayan/Data' ] && sudo mkdir -p /run/media/sayan/Data); sudo mount /dev/sdb5 /run/media/sayan/Data)"
alias ut="[ -d '/run/media/sayan/Data/Programmer' ] && (sudo umount /run/media/sayan/Data)"
alias cdp="cd /run/media/sayan/Data/Programmer"

# manipulate_speakers 10%, 90%
complete -cf sudo

export CLOUDSDK_PYTHON=/usr/bin/python2

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/sayan/google-cloud-sdk/path.bash.inc' ]; then . '/home/sayan/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/sayan/google-cloud-sdk/completion.bash.inc' ]; then . '/home/sayan/google-cloud-sdk/completion.bash.inc'; fi

export PATH="/usr/local/bin":"/home/sayan/selenuim_drivers":$PATH
export PYTHONPATH="$PYTHONPATH:/home/sayan/google-cloud-sdk/platform/google_appengine:/home/sayan/google-cloud-sdk/platform/google_appengine/lib/:/home/sayan/google-cloud-sdk/platform/google_appengine/lib/yaml-3.10/yaml/:/home/sayan/google/"

export PYTHONDONTWRITEBYTECODE="dont you fucking generate __pycache__"
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/lib/pkgconfig/
export PYTHONPATH=$PYTHONPATH:/usr/local/lib/python3.9/site-packages/

export ANDROID_NDK_HOME="/home/sayan/Android/Sdk/ndk/21.3.6528147"
export ANDROID_HOME="/home/sayan/Android/Sdk"
export ANDROID_CMAKE="/home/sayan/Android/Sdk/cmake/3.10.2.4988404/bin/cmake"

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

if [ -f `which powerline-daemon` ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  . /usr/lib/python3.9/site-packages/powerline/bindings/bash/powerline.sh
fi
