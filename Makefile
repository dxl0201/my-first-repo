README.md: guessinggame.sh
	# Project title: Bash, Make, Git, and GitHub

	echo "make was run on:" >> README.md
	ls -l Makefile | egrep -o "\w*\s*[0-9]*\s[0-9]+.[0-9]+" >> README.md

	echo "Number of lines of code:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
