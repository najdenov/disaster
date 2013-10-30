Disaster::Application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  scope '(:locale)', :constraints => { :locale=> /[a-z]{2}(-[A-Z]{2})?/ } do
    root 'default#index'

    get 'association' => 'default#association', as: 'association'
    get 'school' => 'default#school', as: 'school'
    get 'constructions' => 'default#constructions', as: 'constructions'

    resources :albums
    resources :articles
    resources :events
  end
end
