Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  # INDEX
  get 'tasks', to: 'tasks#index'

   # CREATE
   get "tasks/new", to: 'tasks#new', as: 'new_task'
   post "tasks", to: 'tasks#create'

  # SHOW
  get "tasks/:id", to: 'tasks#show', as: 'task'

  # UPDATE
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  patch 'tasks/:id', to: 'tasks#update'

  # DESTROY
  delete 'tasks/:id', to: 'tasks#destroy'

end
