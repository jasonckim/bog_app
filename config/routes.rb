BogApp::Application.routes.draw do
    root to: 'bogs#index'
    get '/bogs', to: 'bogs#index'
    get '/bogs/new', to: 'bogs#new'
    post '/bogs', to: 'bogs#create'
end
