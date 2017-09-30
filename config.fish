export EDITOR=vim

# Path to Oh My Fish install.
set -gx OMF_PATH /Users/keigo/.local/share/omf

set fish_plugins theme peco
# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG /Users/keigo/.config/omf

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

# peco

function fish_user_key_bindings
  bind \cr peco_select_history
  bind \x1b peco_z # Ctrl-[にバインドする
  bind \c] peco_select_ghq_repository
  bind \cd peco_docker
end

# peco for z
function peco_z
  set -l query (commandline)

  if test -n $query
    set peco_flags --query "$query"
  end

  z -l | peco $peco_flags | awk '{ print $2 }' | read recent
  if [ $recent ]
      cd $recent
      commandline -r ''
      commandline -f repaint
  end
end

#peco for Docker
function peco_docker
  docker images | tail -n +2 | peco
end

## alias
alias 'tenki' 'curl -4 http://wttr.in/Tokyo'

## direnv
eval (direnv hook fish)

export GOPATH=/Users/keigo/go_home

tmux
