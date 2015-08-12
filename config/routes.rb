Rails.application.routes.draw do

  devise_for :users

  # We use high voltage to manage static content incl home page
  # See -- config/initializers/high_voltage.rb
  # for the home/root page

  # Pages will be available under /pages/*id
  #resources :pages

  get 'pages/index' => 'pages#index'

end
