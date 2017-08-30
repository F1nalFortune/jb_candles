Rails.application.routes.draw do
  root 'candles#index'

  resources :candles
end

