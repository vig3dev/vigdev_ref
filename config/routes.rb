Rails.application.routes.draw do
  root 'static_pages#index'
  controller :static_pages do
    get :contact
    get :payment
  end
  resources :docs
end
