class AddTypeToUploads < ActiveRecord::Migration
  def change
    add_column :uploads, :type, :string
  end
end
