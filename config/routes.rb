 Rails.application.routes.draw do
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#   root to: "tasks#index"
#   # This is the root route for showing all tasks
#   get "tasks", to: "tasks#index"
#   # this is the route to create a new task, this needs to be done in 2 steps, first get (to display the form) then post (to send the Params of the url to the post (creation in controller))
#   get "tasks/new", to: "tasks#new"
#   post "tasks", to: "tasks#create"

#   # this route shows a single task (notice the :ID so that we can select it from the url params)
#   get "tasks/:id", to: "tasks#show", as: 'task'
  
#   # what we want now is to update a task
#   get    "tasks/:id/edit", to: "tasks#edit"
#   patch  "tasks/:id",      to: "tasks#update"

#   # delete (the D from CRUD) route:
#   delete "tasks/:id",      to: "tasks#destroy"

  root "tasks#index"
  resources :tasks
end
