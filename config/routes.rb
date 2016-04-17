ArsenalApi::Application.routes.draw do
  # API definition
  namespace :api, 
            defaults: { format: :json },
            constraint: { subdomains: 'api' }, 
            path: '/' do
    # List resources here
  end
end
