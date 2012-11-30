Kt::Application.routes.draw do
  root :to => "home#index"

  resources :ticks
end
