class PicturesController <ApplicationController
    
    def new_form
        
        # redirect_to("https://photogram-golden-seven-emklick.c9users.io/photos")
        
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
        
        # @photo = Photo.find(params[:adios_id])
        
        #  @p40 = Photo.find(40)
        #   @p39 = Photo.find(39)
        #   @p38 = Photo.find(38)
        #     @p37 = Photo.find(37)
        #      @p36 = Photo.find(36)
        #       @p35 = Photo.find(35)
        #       @p34 = Photo.find(34)
        #         @p33 = Photo.find(33)
        #          @p32 = Photo.find(32)
        #           @p31 = Photo.find(31)
        # @p30 = Photo.find(30)
        #   @p29 = Photo.find(29)
        #   @p28 = Photo.find(28)
        #     @p27 = Photo.find(27)
        #      @p26 = Photo.find(26)
        #       @p25 = Photo.find(25)
        #       @p24 = Photo.find(24)
        #         @p23 = Photo.find(23)
        #          @p22 = Photo.find(22)
                  @p21 = Photo.find(21)
        @p20 = Photo.find(20)
          @p19 = Photo.find(19)
           @p18 = Photo.find(18)
            @p17 = Photo.find(17)
             @p16 = Photo.find(16)
              @p15 = Photo.find(15)
               @p14 = Photo.find(14)
                @p13 = Photo.find(13)
                #  @p12 = Photo.find(12)
                #   @p11 = Photo.find(11)
        @p10 = Photo.find(10)
          @p9 = Photo.find(9)
           @p8 = Photo.find(8)
            @p7 = Photo.find(7)
             @p6 = Photo.find(6)
              @p5 = Photo.find(5)
               @p4 = Photo.find(4)
                @p3 = Photo.find(3)
                 @p2 = Photo.find(2)
                  @p1 = Photo.find(1)
               
        
        render ("pic_templates/index.html.erb")
    end  
    
    
    
    def show
        
        @photo_details = Photo.find(params[:id_number])
        
        render ("pic_templates/show.html.erb")
    end  
    
    
    def edit_photo
        @photo = Photo.find(params[:photo_id])
        
        
        render ("pic_templates/edit_photo.html.erb")
    end  
    
    
    
    def update_photo
        p = Photo.find(params[:id_number])
        
        p.source = params[:the_source]
        p.caption = params[:the_caption]
        
        p.save
        
        
        render ("pic_templates/update_photo.html.erb")
    end  
    
    
    
    def destroy_photo
        p = Photo.find(params[:adios_id])
        
        @photo_delete_id = params[:adios_id]
        
        p.destroy
        
        @remaining_count = Photo.count
        
        p.save
        
        render ("pic_templates/destroy_photo.html.erb")
    end  
    
    
    
    
    
end    
