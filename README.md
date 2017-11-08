Fish has 'functions' similar to bash's aliases.

Copy these into ~/.config/fish/functions (on ubuntu) and then restart fish.

The following script can be used to clone this repo and copy the files:

```sh
git clone https://github.com/maxpleaner/fish_functions
cd fish_functions
for filename in *.fish; do
  new_path=~/.config/fish/functions/$filename
  if [ -f $new_path ]; then
    echo "$new_path already exists" 1>&2
    exit 64
  fi
  cp $filename $new_path
  echo "copied $new_path"
done;
```

There are some "meta functions" included:

- `fn <name> <body>` to create a function.  
  Note that `$argv` in the function must be written as `\$argv`,  
  e.g. `fn agi "sudo apt-get install \$argv"`
- `fs <name>` an alias for funcsave
- `cfn <name>` stands for "cat function", shows the body of the function
- `rmfn <name>` removes a function
- `fns` lists the functions
- `cfdns` changes into the functions directory
- `backup_functions` - performs a backup to git of the functions folder
  - there must be a git repo in there on the master branch
- `fndoc <string>` appends a line to the readme
- **backup_functions**: `cd ~/.config/fish/functions; git add -A; git commit -m "<message>"; git push origin master; cd -` _backups the functions folder into a repo_ - **cdfns**: `cd 
