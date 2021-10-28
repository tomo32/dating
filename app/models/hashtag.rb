class Hashtag < ApplicationRecord
  validates :hashname, presence: true, length: { maximum:99}
  has_many :photo_hashtag_relations
  has_many :post_images, through: :photo_hashtag_relations
end
