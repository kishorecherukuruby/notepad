Rails.application.routes.draw do
  get 'users/new'

  get 'users/create'
  post 'users/create'


  get 'users/show'

  get 'calculator/addition'
  post 'calculator/addition'

  get 'calculator/subtraction'

  get 'calculator/multiplication'

  get 'calculator/division'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'chapters/create'
  get 'authors/create'
  get 'contents/create'

  root 'users#new'
end
