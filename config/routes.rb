# Rails.application.routes.draw do
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# end

Rails.application.routes.draw do
  resources :users do
    resources :podcasts
  end
end

# Rails.application.routes.draw do
#   resources :groups do
#     resources :podcasts
#   end
# end

