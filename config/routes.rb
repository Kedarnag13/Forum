Rails.application.routes.draw do

	root :to => "public/welcome#home"
  
  post  "/account/sign_up"          => "account/registrations#create", :as => "sign_up"
  
end
