function slink --description "slink -f/d file/dir"
  if test $argv[1] "$HOME/$argv[2]"
   echo "$HOME/$argv[2] already exists"
  else
    ln -s (realpath $argv[2]) $HOME/$argv[2]
  end
end

slink -d .config/nvim
slink -d .config/fish
slink -d .tmux
slink -f .tmux.conf
