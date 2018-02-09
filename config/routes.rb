Rails.application.routes.draw do
  devise_for :users, class_name: 'User::Base'

  get 'pages/dashboard'
  get 'pages/user'
  get 'pages/table'
  get 'pages/typography'
  get 'pages/icons'
  get 'pages/notifications'

  root to: "individuals#index"
end
