Rails.application.routes.draw do

  resources :people do
    resources :pets
    resources :loves
  end
end
