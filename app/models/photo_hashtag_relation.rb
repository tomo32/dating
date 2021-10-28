class PhotoHashtagRelation < ApplicationRecord
  belongs_to :post_image
  belongs_to :hashtag
  with_options presence: true do
    validates :post_image_id
    validates :hashtag_id
  end
end
