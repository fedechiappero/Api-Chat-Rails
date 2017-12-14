# frozen_string_literal: true
Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: '/api/v1/auth'
  mount ActionCable.server => '/cable'
  scope 'api' do
    namespace :v1 do
      resources :messages, only: [:index, :create]
      resources :users, only: [:index, :create]
      resources :chatrooms, only: [:index, :create, :show, :destroy]
    end
  end
  get '*path', to: redirect('/', path: '?%{path}')
end
