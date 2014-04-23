RoriAndrew::Application.routes.draw do
    root :to => 'urls#new'
    resources :urls
end
