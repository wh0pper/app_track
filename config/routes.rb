Rails.application.routes.draw do
  root 'jobs#index'

  resources :jobs do
    resources :steps
  end
end
