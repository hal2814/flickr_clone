Rails.application.routes.draw do
  devise_for :users do
    resources :photos
  end

  resources :photos do
    resources :tags
  end

  resources :tags do
    resources :photos
  end
end
