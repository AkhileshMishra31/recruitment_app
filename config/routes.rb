Rails.application.routes.draw do
   devise_scope :user do
     get '/users/sign_out' => 'devise/sessions#destroy'
     get "users", to: "devise/sessions#new"
   end

   devise_for :users
   resources :companyjobs do
    resources :applicants, only:[:new,:create,:index, :show]
   end
     
   # get '/createdjobs' => 'createdjobs#index'
   resources :createdjobs, only:[:index, :show]

   root "homes#index"
end
