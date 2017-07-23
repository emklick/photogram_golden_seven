Rails.application.routes.draw do
   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  mount WebGit::Engine, at: "/rails/git"

  get("/", { :controller => "pictures", :action => "index"})


# CREATE

  get("/photos/new", {:controller => "pictures", :action => "new_form"})
  get("/create_photo", {:controller => "pictures", :action => "create_photo"})
  
# READ  
  get("/photos", {:controller => "pictures", :action => "index"})
  get("/photos/:id_number", {:controller => "pictures", :action => "show"})
   
# UPDATE
  get("/photos/:photo_id/edit", {:controller => "pictures", :action => "edit_photo"})
  get("/update_photo/:id", {:controller => "pictures", :action => "update_photo"})
   
# DELETE
  get("/delete_photo/:adios_id", {:controller => "pictures", :action => "destroy_photo"})




 
end
