Rails.application.routes.draw do

  get '/greet' => 'hello#greet'
  get '/contact' => 'contact#submit'
  get '/contact_submitted' => 'contact#show'

end
