class RpsController < ApplicationController


  def result

	  	@computer_chosen = ["rock","scissor","paper"].sample
	    @player_chosen = params["pick"]

	    if @player_chosen == nil

	    	@message = "you didn't make a choice"

	    elsif @computer_chosen == @player_chosen

	    	@message = "It's a tie"

	    elsif (@player_chosen == "scissor" && @computer_chosen == "paper")||(@player_chosen == "rock" && @computer_chosen == "scissor")||(@player_chosen == "paper" && @computer_chosen == "rock")
	    	
	    	@message = "you win !"
	    else 
	    	@message = "sorry, you lose"
    	end

   end

end