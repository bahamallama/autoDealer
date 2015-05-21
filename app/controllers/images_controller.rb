class ImagesController < ApplicationController
  load_and_authorize_resource
  before_action :set_image, only: [ :update ]
  before_filter :load_images
  
    def index
      @images = Image.all
      @image = Image.new
    end

    def images_index
        @images = Image.all
        @image = Image.new
    end
    
    # GET /images/1
    # GET /images/1.json
    def show
      @image = Image.find(params[:id])
      @created_at = @image.created_at.to_formatted_s(:long)
      @updated_at = @image.updated_at.to_formatted_s(:long)
      @extrapic_file_size = @image.extrapic_file_size.to_s(:human_size, precision: 5) 
    end
    
    # GET /images/1/edit
    def edit
      @image = Image.find(params[:id])
    end
      
    def create
      @image = Image.new(image_params)
      
      if @image.save
        render json: { message: "success", fileID: @image.id }, status: 200
      else
        render json: { error: @image.errors.full_messages.join(',')}, status: 400
      end
    end

    def update
      respond_to do |format|
        if @image.update(image_params)
          format.html { redirect_to @image, notice: 'Image was successfully updated.' }
          format.json { render :show, status: :ok, location: @image }
        else
          format.html { render :edit }
          format.json { render json: @image.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /images/1
    # DELETE /images/1.json
    def destroy
      @image = Image.find(params[:id])
      respond_to do |format|
          if @image.destroy 
            format.html { redirect_to :back, notice: 'Image was successfully destroyed.' }  
           
          else
            format.html { render :index }
           
          end
        end
    end

    private
    def set_image
        @image = Image.find(params[:id])
    end
    
    def load_images
      @images = Image.all
      @image = Image.new
      
    end
    
    def image_params
      params.require(:image).permit(:extrapic, :car_id)
    end
  
end