Rails.application.routes.draw do

  resources :tasks
  # get 'tasks/show', as: 'tasks_show'
  # get 'tasks/index', as: 'tasks_index'
  # get 'tasks/new', as: 'tasks_new'
  # post 'tasks/create', as:'tasks_create'
  # get 'tasks/:id/edit', as:'tasks_edit', to:'tasks#edit'
  # patch 'tasks/update', as:'tasks_update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
