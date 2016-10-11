class AddMediaTypeToUploads < ActiveRecord::Migration
  def change
    add_column :uploads, :media_type, :string
  end
end
