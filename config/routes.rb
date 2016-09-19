Rails.application.routes.draw do
  
  post  "/account/sign_up"          => "account/registrations#create", :as => "sign_up"
  
end
