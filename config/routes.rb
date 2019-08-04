Rails.application.routes.draw do
  resources :songs
  resources :songbooks
  resources :songlists
  root 'songs#index'
  get 'allcategories', to: redirect('/')
  get 'songs/:id/toggle_selected', to: 'songs#toggle_selected', as: :toggle_selected
  # get 'songs/new', to: 'songs#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
