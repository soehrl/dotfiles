# eval "$(/opt/homebrew/bin/brew shellenv)"

if which nvim >/dev/null
  set -x EDITOR nvim
end

if status is-interactive
and not set -q TMUX
    exec tmux
end

source $HOME/.config/fish/custom_config.fish
set -gx CPM_SOURCE_CACHE $HOME/.cpm
set -gx PATH $PATH:$HOME/.local/bin
set -gx PATH $PATH:$HOME/.cargo/bin
