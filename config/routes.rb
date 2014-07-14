Rails.application.routes.draw do
  root 'static_pages#software'
  match '/music', to: "static_pages#music", via: 'get'
  post 'send' =>         'static_pages#sendit'
end
