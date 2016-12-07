Rails.application.routes.draw do
  # get 'pages/about'
  # get 'pages/contact'
  # get 'pages/team'
  # get 'pages/search'

  # get 'search' => "pages#search"

  # post 'pages/search'


  get 'about' => "pages#about"
  get 'contact' => "pages#contact"
  get 'team' => "pages#team"
  get 'search' => "pages#search"
  post 'search' => "pages#search"

  get 'search/:category' => "pages#search"

  root 'pages#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
