Rails.application.routes.draw do
  patch '/', to: 'tests#test', defaults: { format: 'json' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
