class PicturesController <ApplicationController
    
    def new_form
        
        
        
        render ("pic_templates/new_form.html.erb")
    end    
    
    def create_row
        
        
        
        render ("pic_templates/create_photo.html.erb")
    end 
    
    def index
        
        
        
        render ("pic_templates/index.html.erb")
    end  
    
    def show
        
        
        
        render ("pic_templates/show.html.erb")
    end  
    
    def edit_form
        
        
        
        render ("actions/edit_photo.html.erb")
    end  
    
    def update_row
        
        
        
        render ("pic_templates/update_photo.html.erb")
    end  
    
    def destroy_row
        
        
        
        render ("pic_templates/destroy_photo.html.erb")
    end  
    
    
end    
