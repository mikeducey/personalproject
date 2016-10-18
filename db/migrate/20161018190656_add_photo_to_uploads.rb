class AddPhotoToUploads < ActiveRecord::Migration
  def change
    add_column :uploads, :photo, :string
  end
end
