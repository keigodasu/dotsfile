eval (direnv hook fish)

set theme bobthefish
set -g theme_color_scheme dark

function fish_prompt
 /Users/keigodasu/Library/Python/2.7/bin/powerline-shell --shell bare $status
end

function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
  bind \cg peco_select_ghq_repository
end

#export PYENV_ROOT="$HOME/.pyenv"
#export PATH="$PYENV_ROOT/bin:$PATH"
set -x PATH $HOME/.pyenv/bin $PATH
. (pyenv init - | psub)
tmux
