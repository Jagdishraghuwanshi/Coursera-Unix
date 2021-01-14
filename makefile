all: README.md

README.md: guessinggame.sh
        touch README.md
	echo "# The Unix course assignment :guessinggame" >> README.md
        echo "  \n" >> README.md
	echo -n "Date:" >> README.md
	Date >> README.md
        echo "  \n" >> README.md
	echo -n "number of lines in code :" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
