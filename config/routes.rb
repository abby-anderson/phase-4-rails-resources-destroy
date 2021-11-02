Rails.application.routes.draw do
  resources :birds, only: [:index, :show, :create, :update, :destroy]
  
  # since we now have all 5 restful routes, we could also say it with just resources, like this!
  # resources :birds

  patch "/birds/:id/like", to: "birds#increment_likes"
end
