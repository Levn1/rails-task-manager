Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'tasks', to: 'tasks#index'
  # Creating a tasks link and sending it to the tasks contorller, index method

  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'

  delete 'tasks/:id', to: 'tasks#destroy', as: :delete_task

  get 'tasks/:id', to: 'tasks#show', as: :task
  # Creating a parametrical link that will pass the id as a parameter, calling the details method
end
