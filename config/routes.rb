require 'api_constraints'

ArsenalApi::Application.routes.draw do
  # API definition
  namespace :api, 
            defaults: { format: :json },
            constraint: { subdomains: 'api' }, 
            path: '/' do
    scope module: :v1,
              constraints: ApiConstraints.new(version: 1, default: true) do
      # List 'v1' resources here
    end
  end
end
