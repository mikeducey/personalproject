require 'carrierwave/orm/activerecord'

class Video < ActiveRecord::Base
	mount_uploader :video, VideoUploader
end
