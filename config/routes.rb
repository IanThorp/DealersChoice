Rails.application.routes.draw do
	devise_scope :user do
		post '/auth/sign_in', to: 'users/sessions#create'
	end
  mount_devise_token_auth_for 'User', at: 'auth'
  resources :bars, except: [:new, :edit] do
    resources :drinks, except: [:new, :edit]
  end
  get 'drinks/choose' => "drinks#choose"

  resources :tags, except: [:new, :edit]

  root 'bars#index'
  get 'users/show/:id' => 'users#show'
end
