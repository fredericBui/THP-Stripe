Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  scope '/checkout' do
    get '/', to: 'checkout#index'
    get '/success', to: 'checkout#success'
    get '/cancel', to: 'checkout#cancel'
  end
  
  scope '/thpcheckout' do
    post 'create', to: 'thpcheckout#create', as: 'thpcheckout_create'
    get 'success', to: 'thpcheckout#success', as: 'thpcheckout_success'
    get 'cancel', to: 'thpcheckout#cancel', as: 'thpcheckout_cancel'
  end

  # Defines the root path route ("/")
  root 'home#index'
end
