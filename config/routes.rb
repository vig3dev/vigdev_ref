Rails.application.routes.draw do
  root 'static_pages#index'
  controller :static_pages do
    get :contact
    get :payment
    get :terms
    get :privacy
  end

  namespace :apps do
    resources :docs
  end

  
end
