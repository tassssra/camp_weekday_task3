Rails.application.routes.draw do
  get 'calcs/show' => 'calcs#show'
  # get 'calcs/:figure1/:operator/:figure2' => 'calcs#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
