Rails.application.routes.draw do
 
  root 'chatroom#index'
  get 'login', to: 'session#new'
  post 'login', to: 'session#create'
  delete 'logout', to: 'session#destroy'
  get 'signup', to: 'registration#new'
  post 'signup', to: 'registration#create'
  post 'message', to: 'messages#create'

  mount ActionCable.server, at: '/cable'
end
