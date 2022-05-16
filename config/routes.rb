Rails.application.routes.draw do
   devise_scope :user do
     get '/users/sign_out' => 'devise/sessions#destroy'
     get "users", to: "devise/sessions#new"
   end

   devise_for :users
   resources :companyjobs do
    resources :applicants, only:[:new,:create,:index, :show]
   end
     
   get '/aboutus' => 'aboutus#index'
   resources :createdjobs, only:[:index, :show] do 
    resources :interviews, only:[:new,:create]
   end

   root "homes#index"
   get '/search', to: "companyjobs#search"
   get '/bookmarks', to: "bookmarkusers#bookmark"
end
