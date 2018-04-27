Rails.application.routes.draw do
  devise_for :users, controllers: { user: "users/registrations" }

  # root 'jobs#index'
  root 'jobs#index'
  # resources :users # do
    # resources :jobs
  # end

  resources :jobs do
    collection do
      get 'filter'
    end
    resources :steps
  end
end
