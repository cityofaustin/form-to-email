Rails.application.routes.draw do
  match '/', to: 'submissions#inbound', via: [:post]
  post '/deliver', to: 'submissions#deliver', as: 'send_email'
end
