class HelloController < ApplicationController

  def greet

	@name = params["salutation"]
  	
  	if @name == nil

  		@greeting  = "Hello !"

  	else
		@greeting  = "Hello " + @name + "!"
  		
  	end


  end

end