# frozen_string_literal: true

require 'sidekiq/web'
Rails.application.routes.draw do
  mount Sidekiq::Web => '/sidekiq' if Rails.env.development?

  match '/auth/:provider/callback', to: 'users#create', via: %i[get post]

  get '/login', to: 'users#new'
  post '/login', to: 'users#start'

  resources :operations, only: %i[new create]

  get '/stream/queue', to: 'stream#queue'

  root to: 'operations#root'
end
