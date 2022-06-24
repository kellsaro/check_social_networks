Rails.application.routes.draw do

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  defaults format: :json do
    # Defines the root path route ("/")
    root "social_networks#index"
    put '/', to: "social_networks#update"
  end
end
