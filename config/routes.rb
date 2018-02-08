Rails.application.routes.draw do
  root "static_pages#home"
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/add', to: 'exam_seats#new'
  get '/index', to: 'exam_seats#index'
  get '/attendance', to: 'presents#attendance'
  post '/attendance', to: 'presents#edit'
  resources :exam_seats
  resources :presents, only: [:edit, :attendance]
end
