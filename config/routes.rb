# Rails.application.routes.draw do
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# end

Rails.application.routes.draw do
  root  'groups#index' 
  resources :users, :groups, :podcasts
  get '/groups/:id/podcasts', to:'groups#podcasts', as: 'group_podcasts'
  get '/groups/:id/users', to:'groups#users', as: 'group_users'
  get '/users/:id/podcasts', to:'users#podcasts', as: 'user_podcasts'
  get '/users/:id/groups', to:'users#groups', as: 'user_groups'
end