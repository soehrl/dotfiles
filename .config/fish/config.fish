if which nvim >/dev/null
  set -x EDITOR nvim
end

if status is-interactive
and not set -q TMUX
    exec tmux
end
