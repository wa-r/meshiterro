Rails.application.routes.draw do
  devise_for :users
<<<<<<< HEAD
  root 'post_images#index'
=======
  root to: 'homes#top'
>>>>>>> origin/master
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resource :favorites, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
  end
<<<<<<< HEAD
end
=======
  resources :users, only: [:show, :edit, :update]
end
>>>>>>> origin/master
