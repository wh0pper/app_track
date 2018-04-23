Rails.application.routes.draw do
  root 'jobs#index'

  resources :jobs do
    collection do
      get 'filter'
    end
    resources :steps
  end
end
