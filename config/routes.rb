PhcdevworksCoreModules::Engine.routes.draw do

  namespace :marketing do
    resources :optimizations
  end
  # Core Module Routes
  namespace :modules do
    resources :categories, class_name: 'Core::Category'
  end

  # Mount Routes
  mount PhcdevworksAccounts::Engine, :at => '/'

end
