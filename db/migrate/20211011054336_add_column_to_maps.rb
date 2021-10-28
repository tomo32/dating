class AddColumnToMaps < ActiveRecord::Migration[6.1]
  def change
    add_column :maps, :post_image_id, :integer
  end
end
