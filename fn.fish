function fn
	echo -e "function $argv[1]\n  $argv[2]\nend" > ~/.config/fish/functions/$argv[1].fish
end

