function get_branch
	git branch -f origin/$argv; git checkout $argv
end
