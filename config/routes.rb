Tvtop100::Application.routes.draw do

  # AUTHENTICATION

  # REGISTRATIONS
  get "/sign_up" => "registrations#new", as: :sign_up
  post "/sign_up" => "registrations#create", as: :sign_up

  # SESSIONS
  get "/sign_in" => "sessions#new", as: :sign_in
  post "/sign_in" => "sessions#create", as: :sign_in
  get "/sign_out" => "sessions#destroy", as: :sign_out

  # MOMENTS
  scope ":tvshow" do
    resources :moments
  end

  # RANKINGBOARDS
  resources :ranking_boards

end
