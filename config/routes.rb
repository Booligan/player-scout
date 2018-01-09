Rails.application.routes.draw do
  namespace :api do
    resources :players, except: [:new, :edit]
  end
end
