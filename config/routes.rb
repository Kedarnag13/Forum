Rails.application.routes.draw do

	devise_for :users, :controllers => {
        confirmations: 'users/confirmations',
        passwords: 'users/passwords',
        registrations: 'users/registrations',
        sessions: 'users/sessions',
        unlocks: 'users/unlocks'
    }

	devise_scope :user do
		get   "/users/login"             => "users/session#new",                :as => "login"
		get   "/users/logout"            => "users/session#destroy",            :as => "logout"
		get   "/users/new"               => "users/registrations#new",          :as => "new_user_signup"
		post   "/users/sign_up"          => "users/registrations#create",       :as => "registration"
	end
  
	root :to => "public/welcome#home"
end
