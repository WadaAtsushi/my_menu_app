Rails.application.routes.draw do
  get 'users/index'
  get 'users/login_form'
  get       'users/signin', to: 'users#signin',    as: 'user_signin'
  post      'users/create', to: 'users#create',    as: 'user_create'
  get 'posts/edit'
  get        'posts/index', to: 'posts#index',     as: 'posts_index'
  get          'posts/new', to: 'posts#new',       as: 'post_new'
  post      'psots/create', to: 'posts#create',    as: 'post_create'
  get 'posts/show'
  get '/',                  to: 'posts#top',       as: 'top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
