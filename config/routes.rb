MercuryDemo::Application.routes.draw do

  root to: "articles#index"
  resources :articles, :except => [:edit]
  match '/content(/*content_page)' => "application#show"

end
