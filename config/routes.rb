Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  get 'reviews_controller/new'
  get 'reviews_controller/create'
  get 'restaurants/show'
  get 'restaurants/new'
  get 'restaurants/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
