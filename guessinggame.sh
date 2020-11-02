# File: guessinggame.sh

# this program allows the user to guess the number of files in the current directory until the correct answer is given

# find number of files in directory
answer=$(ls | wc -l)

# print to check
# echo "$answer"

# prompt user for number of files
echo "How many files are in the current directory?"
read guess

# define function
function keepguessing {

	# loop while user gives incorrect answer
	while [[ $guess != $answer ]]
	do

		if [[ $guess < $answer ]]
		then
			echo "Your guess was too low"
		else
			echo "Your guess was too high"

		fi

		echo "How many files are in the current directory?"
		read guess

	done

}

# call function
keepguessing

# if guess is correct, end
echo "Congratulations, you guessed correctly!"
