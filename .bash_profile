export DOTFILES=~/dotfiles

source ${DOTFILES}/git-completion.bash

# settings for bash-git-prompt
GIT_PROMPT_ONLY_IN_REPO=1
source ${DOTFILES}/.bash-git-prompt/gitprompt.sh
