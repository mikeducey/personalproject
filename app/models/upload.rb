require 'carrierwave/orm/activerecord'

class Upload < ActiveRecord::Base
	mount_uploader :photo, UploadUploader
end
