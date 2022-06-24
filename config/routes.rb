Rails.application.routes.draw do
  defaults format: :json do
    root "social_networks#index"
    put 'social_networks/update'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

end
