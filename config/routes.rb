SnapdragonRails::Application.routes.draw do
  resources :events

  get "page/home"
  get "page/about"
  devise_for :users
  resources :profiles
  resources :snaps
  resources :bursts
	root :to => "page#home"
end
