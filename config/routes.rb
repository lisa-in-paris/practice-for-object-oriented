Rails.application.routes.draw do
  resources :shains do
    member do
      get 'standup'
    end
  end
end
