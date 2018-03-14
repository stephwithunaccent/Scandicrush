Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  devise_for :users
  root to: 'albums#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :albums, shallow: true do
    resources :photos do
      resources :photo_tags, only:[:new, :create]
      resources :votes, only: [:create]
    end
  end

  get 'art', to: 'pages#art'
  get 'photography', to: 'pages#photography'
  get 'web', to: 'pages#web'
  get 'contact', to: 'pages#contact'
  get 'about', to: 'pages#about'


end


