Rails.application.routes.draw do
  get 'calcs/:num1/:operator/:num2' => 'calcs#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
