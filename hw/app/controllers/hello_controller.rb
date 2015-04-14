class HelloController < ApplicationController

  def greet
    @name = params["salutation"]
  end

end