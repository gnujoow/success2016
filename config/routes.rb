Rails.application.routes.draw do
  get 'home/index'
  get 'home/search'
  get 'home/exchange'
  root :to => 'home#index'
end
