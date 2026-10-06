eval "$(/opt/homebrew/bin/brew shellenv)"

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

set -gx NVIM_ENABLE_COPILOT "yes"

alias xcopy="xclip -sel clip"

function y
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	command yazi $argv --cwd-file="$tmp"
	if read -z cwd < "$tmp"; and [ "$cwd" != "$PWD" ]; and test -d "$cwd"
		builtin cd -- "$cwd"
	end
	command rm -f -- "$tmp"
end
