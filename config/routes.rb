Rails.application.routes.draw do
  root 'static_pages#index'
  post 'send' =>         'static_pages#sendit'
end
