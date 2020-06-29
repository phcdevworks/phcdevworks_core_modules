PhcdevworksCoreModules::Engine.routes.draw do

  # Core Module Routes
  namespace :modules do
    resources :categories
  end

  # Mount Routes
  mount PhcdevworksAccounts::Engine, :at => '/'

end
