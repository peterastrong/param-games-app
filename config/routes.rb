Rails.application.routes.draw do
  get "/name_page", to: "games#params_method"
  get "/num_game", to: "games#num_game_method"
  get "/counter_view", to: "games#counter_method"
  get "/num_game2/:wilcard_number", to: "games#num_game2_method"

  get "/form_input", to: "games#form_input_method"
  post "/form_result", to: "games#form_result_method"
end
