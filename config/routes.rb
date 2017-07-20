Rails.application.routes.draw do
 root to: 'blog/posts#index'

 namespace :author do
 	 resources :posts
 end

 scope module: 'blog' do
    get 'posts' => 'posts#index', as: :posts
    get 'posts/:id' => 'posts#show', as: :post
end
end
