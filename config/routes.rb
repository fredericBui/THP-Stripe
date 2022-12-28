Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  scope '/checkout' do
    get '/', to: 'checkout#index'
    get '/success', to: 'checkout#success'
    get '/cancel', to: 'checkout#cancel'
  end
  
  # Defines the root path route ("/")
  root 'home#index'
end
