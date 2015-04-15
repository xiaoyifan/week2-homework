class GameController < ApplicationController


  def pick

  end

  def result
  	@pick_numbers = [1,2,3].sample(1)
    @object = params["pick"]
    
  end

end