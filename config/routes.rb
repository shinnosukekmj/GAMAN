Rails.application.routes.draw do

  get 'homes/top'
  devise_for :drinks,skip: [:passwords], controllers: {
  registrations: "drink/registrations",
  sessions: 'drink/sessions'
}

  namespace :drink do
    resources :drinks,only: [:show, :update,]
    resources :voices, only: [:index, :create, :destroy] do
      resource :favorites, only: [:create, :destroy]
    end
  end

  devise_for :smokes, skip: [:passwords] ,controllers: {
  registrations: "smoke/registrations",
  sessions: "smoke/sessions"
}

  namespace :smoke do
    resources :smokes,only: [:show, :update]
    resources :voises, only: [:index, :create, :destroy] do
      resource :favolites, only: [:create, :destroy]
    end
  end

  root 'homes#top'
  resources :prices,only: [:index, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
