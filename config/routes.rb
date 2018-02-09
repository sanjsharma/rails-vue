Rails.application.routes.draw do
  devise_for :users
  get 'pages/dashboard'
  get 'pages/user'
  get 'pages/table'
  get 'pages/typography'
  get 'pages/icons'
  get 'pages/notifications'

  root to: "individuals#index"
end
