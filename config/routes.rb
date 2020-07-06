PhcdevworksCoreModules::Engine.routes.draw do

    # Routes for Posts
    namespace :post do
        resources :categories, class_name: 'Core::Post::Category'
    end

    # Routes for Marketing
    namespace :marketing do
        resources :optimizations, class_name: 'Core::Marketing::Optimization'
    end

    # Mount Routes
    mount PhcdevworksAccounts::Engine, :at => '/'

end
