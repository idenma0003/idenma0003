Rails.application.routes.draw do
  #root "home#top"
  #get '/' , to:  "home#top"

  get '/index', to: 'posts#index'

  
  get "/new", to: "posts#new"
    get "/:id", to: "posts#show"
	get "/:id/edit", to: "posts#edit"
  post "/create", to: "posts#create"
  post "/:id/update", to: "posts#update"
  post "/:id/destroy", to: "posts#destroy"
  
 	get "/" => "dictionaries#list" 
    get "/dictionariesnew" => "dictionaries#new"
	get "/dictionaries/:id/show" => "dictionaries#show"
    get "/dictionaries/:id/edit" => "dictionaries#edit"
	delete "/dictionaries/:id/" => "dictionaries#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
