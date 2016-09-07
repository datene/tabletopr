Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  namespace :account do
    resources :games, except: [:show]
  end

  resources :games, only: :show do 
    resources :playing_sessions, only: [:create, :destroy]
      resources :rpg_characters
      resources :chapters do
        resources :encounters do
          resources :lores
          resources :action_events do
            resources :monsters
            resources :initiatives
            resources :actions
          end
        end
      end
  end
end
