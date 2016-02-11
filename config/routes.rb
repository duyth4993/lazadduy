Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, path: "auth", path_names: {sign_in: "login", sign_out: "logout"}
  root "static_pages#home"
  get "help" => "static_pages#help"
end
