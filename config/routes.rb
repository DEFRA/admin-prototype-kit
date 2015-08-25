Rails.application.routes.draw do
  # We use high voltage to manage static content incl home page
  # See -- config/initializers/high_voltage.rb for the home/root page

  # Prototype pages will be available under /pages/*id
  get '/pages/*id' => 'proto_pages#show', as: :proto_pages, format: false

  post '/pages/*id' => 'proto_pages#update', as: :proto_pages_post, format: false
end
