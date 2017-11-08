function backup_functions
  cd ~/.config/fish/functions
  git add -A; git commit -m 'backup'
  git push origin master
  cd -
end
