Rails.application.routes.draw do

  get '/greet' => 'hello#greet'
  get '/contact' => 'contact#submit'
  get '/contact_submitted' => 'contact#show'
  get '/rps' => 'game#pick'
  get '/rps_results' =>'game#result'

end
