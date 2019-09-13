#UNA FORMA DE CREAR LA RUTA
Rails.application.routes.draw do
  resources :users do
    member do
      put 'inactive'
      put 'active'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

#PRIMERA FORMA DE HACER UN COLLECTION
=begin
Rails.application.routes.draw do
  resources :users do
    collection do
      put 'collection'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
=end


=begin
OTRA FORMA DE HACER LA RUTA CON COLLECTION
Rails.application.routes.draw do
  resources :users do
    collection do
      put 'collection'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
=end


=begin
OTRA FORMA DE CREAR LA RUTA
Rails.application.routes.draw do
  resources :users do
    member do
      put 'inactive'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
=end