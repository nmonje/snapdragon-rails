SnapdragonRails::Application.routes.draw do
  get "page/home"
  get "page/about"
  devise_for :users
  resources :profiles
  resources :snaps
  resources :bursts
  resources :events

	root :to => "page#home"
end
