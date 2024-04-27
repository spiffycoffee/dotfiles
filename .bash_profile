alias gti='echo "vroom!"; git'
alias {vi,vim}='nvim'
alias ls='ls --color=auto'

export DOTFILES=~/dotfiles

source ${DOTFILES}/git-completion.bash

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/shims:$PATH"

# Display count of background jobs
function bg_jobs {
	# bash-git-prompt creates a background job we need to account for
	cnt=$(($(jobs -l | wc -l)-1))
	if [ $cnt -gt 0 ]; then
		echo -ne " ☃ ${cnt}"
	fi
}

# settings for bash-git-prompt
GIT_PROMPT_ONLY_IN_REPO=1
GIT_PROMPT_END_USER="\`bg_jobs\` \n$ "
source ${DOTFILES}/.bash-git-prompt/gitprompt.sh
