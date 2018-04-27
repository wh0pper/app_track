Rails.application.routes.draw do
  devise_for :users
  root 'jobs#index'

  resources :jobs do
    collection do
      get 'filter'
    end
    resources :steps
  end
end
