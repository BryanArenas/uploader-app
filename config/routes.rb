Rails.application.routes.draw do
  root 'data#index'

  get 'data/import'

  get 'data/import' => 'datum#my_import'

  resources :data do 
    collection {post :import}
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
