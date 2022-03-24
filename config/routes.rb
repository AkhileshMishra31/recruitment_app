Rails.application.routes.draw do
   devise_scope :user do
     get '/users/sign_out' => 'devise/sessions#destroy'
     get "users", to: "devise/sessions#new"
   end

   devise_for :users
   resources :companyjobs do
    resources :applicants, only:[:new,:create,:index]
   end
     
   get '/createdjobs' => 'createdjobs#index'

   root "homes#index"
end
