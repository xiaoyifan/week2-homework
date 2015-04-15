Rails.application.routes.draw do

  get '/greet' => 'hello#greet'

# Challenge #1: Links and Querystring Parameters

# Your app must respond to the following URL: http://localhost:3000/greet 
# and display the word, "Hello" inside of an h1 element: <h1>Hello</h1>

# If a querystring parameter with the key salutation is present, then your 
# app should use the querystring value as the message.

  get '/contact' => 'contact#submit'
  get '/contact_submitted' => 'contact#show'

# Challenge #2: Submitting Data with a Form

# Your app must respond to the following URL: http://localhost:3000/contact. 
# This page should present a simple contact form, allowing the user to enter their first and last names.

# When the user clicks the Submit button, the form should pass the data to: 
# http://localhost:3000/contact_submitted which should display the information that had been entered.
  get '/rps' => 'rps#pick'
  get '/rps_results' =>'rps#result'

# Challenge #3: "Rock, Paper, Scissors" Game

# The goal is to simulate a game of "Rock, Paper Scissors."

# In this game, you visit a certain URL to begin: http://localhost:3000/rps. 
# The human player chooses their weapon by clicking on a picture (or a simple text link) of a rock, 
# a piece of paper, or a pair of scissors.
# When the player clicks on their chosen weapon, 
# the app should then have the computer randomly select a weapon and display the result. 
# The player's choice, the computer's choice, and the winner should all be displayed. 
# If it's a tie, the app should display "It's a tie!" instead of declaring a winner.
# The page that displays the result must include a link to play again.

  get '/dice' => 'dice#index'
  get 'roll' => 'dice#roll'

# Challenge #4: "Craps" Dice Game

# For a live example and instructions, see: http://jeffcohenonline.com/demos/dice

# Your URL To Start The Game: http://localhost:3000/dice
# Any other urls you might need are NOT required to match what's in the demo, but you can use that strategy if you like
# The page should contain an h1 element with the content, "Dice Game"

end
