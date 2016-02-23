Rails.application.routes.draw do
  get 'home/index'
  get 'home/search'
  get 'home/exchange'
  get 'home/major'
  root :to => 'home#index'
end
