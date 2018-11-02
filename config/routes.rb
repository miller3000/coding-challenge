Rails.application.routes.draw do

  root controller: :posts, action: :index
  resources :posts, :comments

  #       Prefix Verb   URI Pattern                  Controller#Action
  #        posts GET    /posts(.:format)             posts#index
  #              POST   /posts(.:format)             posts#create
  #     new_post GET    /posts/new(.:format)         posts#new
  #    edit_post GET    /posts/:id/edit(.:format)    posts#edit
  #         post GET    /posts/:id(.:format)         posts#show
  #              PATCH  /posts/:id(.:format)         posts#update
  #              PUT    /posts/:id(.:format)         posts#update
  #              DELETE /posts/:id(.:format)         posts#destroy
  #     comments GET    /comments(.:format)          comments#index
  #              POST   /comments(.:format)          comments#create
  #  new_comment GET    /comments/new(.:format)      comments#new
  # edit_comment GET    /comments/:id/edit(.:format) comments#edit
  #      comment GET    /comments/:id(.:format)      comments#show
  #              PATCH  /comments/:id(.:format)      comments#update
  #              PUT    /comments/:id(.:format)      comments#update
  #              DELETE /comments/:id(.:format)      comments#destroy

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
