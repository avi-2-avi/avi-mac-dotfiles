### Last update: 14 Jul 2023

# Date and Language
set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8
set -g theme_display_date yes 
set -g theme_date_format "+ %I:%M %p"
set -g theme_date_timezone America/Lima 

# User displays
set -g theme_display_user no 
set -g default_user your_normal_user
set -g theme_display_vi no 
set -g theme_display_cmd_duration yes
set -g theme_title_display_process yes
set -g theme_title_display_path no 
set -g theme_title_use_abbreviated_path yes
set -g fish_prompt_pwd_dir_length 0
set -g theme_project_dir_length 0
set -g theme_show_exit_status yes
set -g theme_display_git_default_branch no
set -g theme_newline_cursor yes

# User modes
set -g fish_vi_key_bindings
set -g theme_newline_prompt ' '

# Themes and fonts
set -g theme_powerline_fonts no
set -g theme_nerd_fonts yes
set -g theme_color_scheme terminal 

# Languges or services
set -g theme_display_docker_machine yes
set -g theme_display_node yes

# Aliases

alias f "fzf --bind 'enter:become(vim {})'"

alias ls "ls -p -G"
alias la "ls -A"
alias ll "ls -l"
alias lla "ll -A"
alias g git
command -qv nvim && alias vim nvim

alias p "cd ~/Projects/"

alias w "cd ~/Work/"

if type -q eza
  alias ll "eza -l -g --icons"
  alias lla "ll -a"
end

function fish_user_key_bindings
  fish_vi_key_bindings
end

function fish_greeting 
end
# fish_add_path /Users/cristinavidal/.spicetify

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /Users/cristinavidal/miniconda3/bin/conda
    eval /Users/cristinavidal/miniconda3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/Users/cristinavidal/miniconda3/etc/fish/conf.d/conda.fish"
        . "/Users/cristinavidal/miniconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/Users/cristinavidal/miniconda3/bin" $PATH
    end
end
# <<< conda initialize <<<

set -x ANDROID_HOME $HOME/Library/Android/sdk
set -x PATH $PATH $ANDROID_HOME/emulator $ANDROID_HOME/platform-tools

# set -x JAVA_HOME /Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home
set -gx JAVA_HOME (/usr/libexec/java_home -v 21)
set -gx PATH $JAVA_HOME/bin $PATH

# PHP
set PATH /Users/cristinavidal/.config/herd-lite/bin $PATH
set PATH $HOME/.composer/vendor/bin $PATH

