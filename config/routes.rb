Rails.application.routes.draw do
  resources :pets, only: %i[index show new create edit update destroy]
end
