Rails.application.routes.draw do
  root 'candles#index'

  resources :candles
  get '/our_purpose', to: 'candles#our_purpose', as: '/our_purpose'
  get '/product', to: 'candles#product', as: '/product'
  get '/blog', to: 'candles#blog', as: '/blog'
  get '/giving_back', to:'candles#giving_back', as: '/giving_back'
  get '/near_you', to: 'candles#near_you', as: '/near_you'
  get '/contact', to: 'candles#contact', as: '/contact'

end

# get 'mixtapes_find_single_mixtape', to: 'mixtapes#find_single_mixtape'
# get 'mixtapes_users_mixtapes', to: 'mixtapes#users_mixtapes'

