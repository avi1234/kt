Kt::Application.routes.draw do
  root :to => "home#index"

  match "/main"=>"home#main"
  match "/tick"=>"home#tick"

  resources :ticks
end
