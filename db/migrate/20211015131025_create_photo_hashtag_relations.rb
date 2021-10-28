class CreatePhotoHashtagRelations < ActiveRecord::Migration[6.1]
  def change
    create_table :post_image_hashtag_relations do |t|
      t.references :post_image, index: true, foreign_key: true
      t.references :hashtag, index: true, foreign_key: true
      t.timestamps
    end
  end
end
