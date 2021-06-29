#Remove % sign in new shell
unsetopt PROMPT_SP

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Persistent shell History
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# Add home/end/delete key functionality
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[3~" delete-char

### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-rust \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-bin-gem-node

### End of Zinit's installer chunk

# zinit packages
zinit ice wait lucid
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-syntax-highlighting

# Alias
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
