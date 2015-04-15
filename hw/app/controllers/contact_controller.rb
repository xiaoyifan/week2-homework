class ContactController < ApplicationController


  def submit
    @first = "first name"
    @last = "last name"
  end

  def show
    @first = params["first"]
    @last = params["last"]
  end

end