Rails.application.routes.draw do
  get 'hotels/index'
  root 'hotels#index'
  resources :hotels
  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
