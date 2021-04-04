PhcdevworksCoreModules::Engine.routes.draw do

  namespace :affiliate do
    resources :links
  end
    # Routes for Posts
    namespace :post do
        resources :categories, class_name: 'Post::Category'
    end
    
    # Routes for Marketing
    namespace :marketing do
        resources :optimizations, class_name: 'Marketing::Optimization'
    end
    
    # Routes for Affiliate
    namespace :affiliate do
        resources :links, class_name: 'Affiliate::Link'
    end
    
    # Mount Routes
    mount PhcdevworksAccounts::Engine, :at => '/'

end
