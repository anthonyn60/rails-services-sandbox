Rails.application.routes.draw do
  root to: 'home#index'
  get '/raise_exception' => 'home#raise_exception'
end
