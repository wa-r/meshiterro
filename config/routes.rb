Rails.application.routes.draw do
  root 'post_images#index'

　resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resources :post_comments, only: [:create, :destroy]
  end
end