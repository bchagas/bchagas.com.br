Themis::Application.routes.draw do
  devise_for :admins, :users
  resources :users
  resources :posts do
    collection do
      match 'pages/:page' => 'posts#index', :as => 'page'
    end
  end
  match 'panel' => 'panel/posts#new', :as => 'panel'
  namespace 'panel' do
    resources :posts do
      member do
        match 'publish' => 'posts#publish', :as => 'publish'
      end
      collection do
        post 'preview'
      end
    end
  end
  match 'sitemap.:format', :to => 'application#sitemap', :as => 'sitemap'
  match 'tags/:tag', :to => 'posts#by_tag', :as => 'tags'
  match 'posts.:format', :to => 'posts#all'
  match 'posts/pages/:page', :to => 'posts#all', :as => 'posts_page'
  root :to => "posts#index"
end
