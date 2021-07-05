Rails.application.routes.draw do
  get 'users/index'
  get 'users/login_form'
  get 'users/signin'
  get 'posts/edit'
  get 'posts/index'
  get 'posts/new'
  get 'posts/show'
  get 'posts/top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
