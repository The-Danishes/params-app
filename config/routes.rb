Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/params_test", to: "params#query_params"

  get "/game", to: "params#guess_a_number"

  # localhost:3000/url_parameter/hello
  get "/url_parameter/:message/:second_message", to: "params#url_params"

  # Routes for form
  get "/form_display", to: "params#form_display"
  post "/form_result", to: "params#form_result"



end
