# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=~/Library/Android/sdk/tools:$PATH
export PATH=~/Library/Android/sdk/platform-tools:$PATH
export ANDROID_SDK_ROOT="/usr/local/share/android-sdk"
export ZSH=/Users/naren/.oh-my-zsh
export UPDATE_ZSH_DAYS=1

DEFAULT_USER=Naren
POWERLINE_HIDE_USER_NAME="true"
POWERLINE_HIDE_HOST_NAME="true"
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
source /Library/Python/2.7/site-packages/powerline/bindings/bash/powerline.sh

ZSH_THEME="robbyrussell"
source $ZSH/oh-my-zsh.sh
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Aliases

alias recordphone='function _recordphone(){ adb shell screenrecord /sdcard/$1.mp4; sleep 3; adb pull /sdcard/$1.mp4 ~/Downloads/; adb shell rm /sdcard/$1.mp4; };_recordphone'
alias o='open .'  # Open the current directory in Finder
alias ut='uptime' # Computer uptime
alias c='clear'
alias -g delete-merged='branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d'
alias gitplz='git commit --allow-empty -m "build plz"'
alias gradle='./gradlew'
alias g='gradle'

# side by side diff
alias diffside='function _diffside(){ diff -u $1 $2 | diff2html -i stdin -s side --sc enabled --su open -F $3.html };_diffside'

# unified diff
alias diffit='function _diffit(){ diff -u $1 $2 | diff2html -i stdin --sc enabled --su open -F $3.html }; _diffit'

# Git
alias co='git co'
alias cob='git cob'
alias st='git st'
alias push='git push'
alias pull='git pull'
alias fetch='git fetch'
alias gitamd='git add -A && git commit --amend --no-edit && git push -f origin'

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="false"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
