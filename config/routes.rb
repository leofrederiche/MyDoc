Login::Application.routes.draw do
  get "/", to: "pages#index", as: :root
  post "/", to: "pages#create", as: false
  get "/:id", to: "pages#texto", as: :texto
  patch "/:id", to: "pages#update", as: :update
end
