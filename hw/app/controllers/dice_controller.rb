class DiceController < ApplicationController


  def roll

  		@value = [1, 2, 3, 4, 5, 6].sample(2)
		@sum = @value[0] + @value[1]
		@goal = params["point"]

		if @goal != nil

			if @sum == 7
				@info = "You Lose!"
				@button = "Start over"
			elsif @sum.to_s == @goal.to_s
				@info = "You Win!"
				@button = "Next Round"
			else
				@info = "Your wanna have #{@goal} but you got #{@sum}. do it again."
				@button = "Roll One More Time"
			end

		else

	         if @sum == 7 || @sum == 11
				@info = "You Win!"
				@button = "Next Round"
			elsif @sum == 2 || @sum ==3 || @sum == 12
				@info = "You Lose..."
				@button = "Next Round"
			else
				@goal = @sum
				@goal_message = "Your goal this round is #{@goal}."
				@info = "Try to get #{@goal}, before you roll a 7."
				@button = "Roll the dice"
			end
			
		end

  end

end