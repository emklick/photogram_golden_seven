class PicturesController <ApplicationController
    
    def new_form
        
        
        
        render ("pic_templates/new_form.html.erb")
    end    
    
    
    
    def create_photo
        p = Photo.new
        
        p.source = params[:the_source]
        p.caption = params[:the_caption]
        
        p.save
        
        @current_count = Photo.count
        
        
        render ("pic_templates/create_photo.html.erb")
    end 
    
    
    
    def index
        @list_of_photos = Photo.order(:create_at => :desc)
        
        @photo = Photo.find(params[:adios_id])
        
        
        render ("pic_templates/index.html.erb")
    end  
    
    
    
    def show
        
        @photo = Photo.find(params[:id_number]).to_i
        
        render ("pic_templates/show.html.erb")
    end  
    
    
    def edit_photo
        @photo = Photo.find(params[:photo_id])
        
        
        render ("pic_templates/edit_photo.html.erb")
    end  
    
    
    
    def update_photo
        p = Photo.find(params[:id])
        
        p.source = params[:the_source]
        p.caption = params[:the_caption]
        
        p.save
        
        @the_id = p.id
        
        render ("pic_templates/update_photo.html.erb")
    end  
    
    
    
    def destroy_photo
        p = Photo.find(params[:adios_id])
        
        p.destroy
        
        @remaining_count = Photo.count
        
        render ("pic_templates/destroy_photo.html.erb")
    end  
    
    
    
    
    
end    
