README.md:
	echo "Bash, Make, Git, and GitHub Project" > README.md
	echo " " >> README.md
	echo "Makefile was run at $(shell date)" >> README.md 	
	echo " " >> README.md
	echo "The number of lines of code contained in guessinggame.sh:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
