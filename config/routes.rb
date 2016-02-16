Rails.application.routes.draw do
  get 'home/index'
  get 'home/search'
  root :to => 'home#index'
end
