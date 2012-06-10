Offensive::Application.routes.draw do

  root :to => 'game#index'

  get :please_login, :to => 'game#please_login'

  post :log_invitation, :to => 'game#log_invitation'

  resources :offenses

  match ':page',  :as => :page, :to => 'pages#show',  :constraints =>  {:page => /[a-z]\w*/ }

end
