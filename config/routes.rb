Rails.application.routes.draw do
  resources :job_ships
resources :jobs_ships
resources :ships
resources :jobs
# resources :users

  devise_for :users

  get 'welcome/index'
	root to: 'welcome#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
