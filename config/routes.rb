Rails.application.routes.draw do
  root 'chatroom#index'
  get 'login' => "sessions#new"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  post 'message' => 'messages#create'

  mount ActionCable.server, at: '/cable'
end
