class VideoController < ApplicationController

	def new
    	@video = Video.new
  	end

  	def create
    	@video = Video.new(video_params)
	    respond_to do |format|
	      if @video.save
	        format.html { redirect_to @video }
	        format.json { render :show, status: :created, location: @video}
	      else
	        format.html { render :new }
	        format.json { render json: @video.errors, status: :unprocessable_entity }
	      end
	    end
    end

    def show
		@video = Video.find(params[:id])
	end

private

    def video_params
      params.require(:video).permit(:video, :media_type, :description)
    end

end
