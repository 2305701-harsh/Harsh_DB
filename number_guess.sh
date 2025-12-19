#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -q -c"

echo "Enter your username:"
read USERNAME

USER=$($PSQL "SELECT username,games_played,best_game FROM users WHERE username='$USERNAME'")
if [[ -z $USER ]]; then
  $PSQL "INSERT INTO users(username,games_played,best_game) VALUES('$USERNAME',0,NULL)"
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  GAMES_PLAYED=0
  BEST_GAME=
else
  IFS='|' read USERNAME GAMES_PLAYED BEST_GAME <<< "$USER"
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

SECRET_NUMBER=$((RANDOM % 1000 + 1))
GUESS_COUNT=0

echo "Guess the secret number between 1 and 1000:"
while true
do
  read NUMBER
  if ! [[ $NUMBER =~ ^[0-9]+$ ]]; then
    echo "That is not an integer, guess again:"
    continue
  fi
  ((GUESS_COUNT++))
  if [[ $NUMBER -eq $SECRET_NUMBER ]]; then
    echo "You guessed it in $GUESS_COUNT tries. The secret number was $SECRET_NUMBER. Nice job!"
    if [[ -z $BEST_GAME ]]; then
      $PSQL "UPDATE users SET games_played=games_played+1, best_game=$GUESS_COUNT WHERE username='$USERNAME'"
    else
      $PSQL "UPDATE users SET games_played=games_played+1 WHERE username='$USERNAME'"
      $PSQL "UPDATE users SET best_game=LEAST(best_game,$GUESS_COUNT) WHERE username='$USERNAME'"
    fi
    break
  elif [[ $NUMBER -gt $SECRET_NUMBER ]]; then
    echo "It's lower than that, guess again:"
  else
    echo "It's higher than that, guess again:"
  fi
done