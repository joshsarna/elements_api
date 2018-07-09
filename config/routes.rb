Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    get '/elements' => 'elements#index'
    get '/elements/:id' => 'elements#show'
    post '/elements' => 'elements#create'
    patch '/elements/:id' => 'elements#update'
    delete '/elements/:id' => 'elements#destroy'
  end
end
