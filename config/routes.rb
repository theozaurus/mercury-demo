MercuryDemo::Application.routes.draw do

  root to: "application#show"
  match '/content(/*content_page)' => "application#show"

end
