class UploadsController < ApplicationController

	def new
    	@upload = Upload.new
  	end

  	def create
    	@upload = Upload.new(upload_params)
	    respond_to do |format|
	      if @upload.save
	        format.html { redirect_to @upload }
	        format.json { render :show, status: :created, location: @upload}
	      else
	        format.html { render :new }
	        format.json { render json: @upload.errors, status: :unprocessable_entity }
	      end
	    end
    end

    def show
		@upload = Upload.find(params[:id])
	end

private

    def upload_params
      params.require(:upload).permit(:media_type, :description, :photo)
    end

end
