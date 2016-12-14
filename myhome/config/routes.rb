Rails.application.routes.draw do

  resources :restaurants do
    collection do
      get "top" => "restaurants#top"
    end
    member do
      get "chef" => "restaurants#chef"
    end
    resources :reviews, only: [:new, :create]
  end

  namespace :admin do
    resources :restaurants, only: [:index]
  end


  get "pages" => "pages#home"

  root 'pages#home'
end



# get "restaurants" => "restaurant#index"
  # get "restaurants/:id" => "restaurants#show"
  # get "restaurants/new" => "restaurants#new"
  # post "restaurants" => "restaurants#create"
  # get "restaurants/:id/edit" => "restaurants#edit"
  # patch "restaurants/:id" => "restaurants#update"
  # delete "restaurants/:id" => "restaurants#destroy"

  # root 'pages#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
