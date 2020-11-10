Rails.application.routes.draw do

  root 'areas_formacions#index'

  resources :perfil_egresados
  get 'asignatura/:id/perfil', to:'perfil_egresados#index', as: 'asignaturas_perfil_egresados'
  resources :objetivos
  get 'asignatura/:id/objetivos', to:'objetivos#index', as: 'asignaturas_objetivos'
  resources :asignaturas
  get 'areas_formacions/:id/asignatura', to:'asignaturas#index', as: 'areas_formacions_asignaturas'
  resources :areas_formacions

    #Guille-Temas-Contenidos
    get 'asignatura/:id/temas', to:'temas#index', as: 'asignaturas_temas'
    get 'temas/nuevo', to:'temas#new' 
    post 'temas/nuevo', to:'temas#create', as: 'temas_crear' 
    get 'temas/:id/editar', to:'temas#edit', as: 'temas_editar' 
    put 'temas/editar', to:'temas#update', as: 'temas_actualizar'  
    put 'temas/:id/borrar',   to:'temas#destroy', as: 'temas_borrar'
    
    get 'tema/:id/contenidos', to:'contenidos#index', as: 'temas_contenidos' 
    get 'contenidos/nuevo', to:'contenidos#new' 
    post 'contenidos/nuevo', to:'contenidos#create', as: 'contenidos_crear' 
    get 'contenidos/:id/editar', to:'contenidos#edit', as: 'contenidos_editar' 
    put 'contenidos/editar', to:'contenidos#update', as: 'contenidos_actualizar'  
    delete 'contenidos/:id/borrar',   to:'contenidos#destroy', as: 'contenidos_borrar'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
