# Rails.application.routes.draw do
#   devise_for :users
#   root to: "pages#home"
#   # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

#   # Defines the root path route ("/")
#   # root "articles#index"
# end

Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :vacancies, only: %i[new update show]

  resources :users, only: :show do
    resources :applications, only: :index
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :vacancies, only: %i[new create show index edit update destroy] do
    resources :applications, only: %i[new create]
  end
  get '/applications/:id', to: 'application#destroy', as: :delete_application
  get '/users/:user_id/vacancies', to: 'vacancies#myvacancies', as: :my_vacancies
  # get '/islands/:id', to: 'islands#destroy', as: :delete_island
end
