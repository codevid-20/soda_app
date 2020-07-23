Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE

  get "/sodas" => "sodas#index"
  get "/sodas/new" => "sodas#new"  
  post "/sodas" => "sodas#create"
  get "/sodas/:id" => "sodas#show"
  get "/sodas/:id/edit" => "sodas#edit"

end
