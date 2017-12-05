Rails.application.routes.draw do
  resources :job_ships
  resources :ships
  resources :jobs do
    resources :job_ships
  end
# resources :users

  devise_for :users

  get 'welcome/index'
	root to: 'welcome#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
