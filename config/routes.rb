PhcdevworksCoreModules::Engine.routes.draw do

  # Core Module Routes
  namespace :modules do
    resources :categories, class_name: 'Core::Category'
  end

  # Mount Routes
  mount PhcdevworksAccounts::Engine, :at => '/'

end
