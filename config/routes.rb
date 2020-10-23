Rails.application.routes.draw do
    #teams routes
    get '/teams', to: 'teams#index'
    get '/team/:id', to: 'teams#show', as: "team"
    #players routes
    resources :players
end
