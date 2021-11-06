class PostImage < ApplicationRecord
  belongs_to :user
  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  mount_uploader :image, PostImageUploader

  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode


  validates :name, presence: true
  validates :image, presence: true

  has_many :photo_hashtag_relations
  has_many :hashtags, through: :photo_hashtag_relations, dependent: :destroy

  after_create do
    photo = PostImage.find_by(id: self.id)
    hashtags  = self.caption.scan(/[#＃][\w\p{Han}ぁ-ヶｦ-ﾟー]+/)
    photo.hashtags = []
    hashtags.uniq.map do |hashtag|
      #ハッシュタグは先頭の'#'を外した上で保存
      tag = Hashtag.find_or_create_by(hashname: hashtag.downcase.delete('#'))
      photo.hashtags << tag
    end
  end

  before_update do
    photo = PostImage.find_by(id: self.id)
    photo.hashtags.clear
    hashtags = self.caption.scan(/[#＃][\w\p{Han}ぁ-ヶｦ-ﾟー]+/)
    hashtags.uniq.map do |hashtag|
      tag = Hashtag.find_or_create_by(hashname: hashtag.downcase.delete('#'))
      photo.hashtags << tag
    end
  end

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

  def self.search(keyword)
    where(["name like? OR caption like?", "%#{keyword}%", "%#{keyword}%"])
  end

end
