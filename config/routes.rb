RailsDynamicFormExample::Application.routes.draw do
  root 'shirt_styles#index'

  resources :shirt_styles, only: [:index, :new, :create]
end
