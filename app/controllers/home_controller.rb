class HomeController < ApplicationController

	def index
		@pictures = Upload.all
		@videos = Video.all
	end
end
