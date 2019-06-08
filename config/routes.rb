Rails.application.routes.draw do
  get 'cocktails/index' => 'cocktails#index'
  get 'cocktails/:cocktail_id' => 'cocktails#show'

  get '/' => "home#top"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
