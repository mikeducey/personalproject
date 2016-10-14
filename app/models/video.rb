require 'carrierwave/orm/activerecord'

class Video < ActiveRecord::Base
	mount_uploader :upload, VideoUploader
end
