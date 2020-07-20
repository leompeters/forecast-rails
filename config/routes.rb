# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'forecast#index'

  get 'forecast', to: 'forecast#index'
  post 'forecast', to: 'forecast#create'
end
