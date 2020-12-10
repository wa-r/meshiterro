class PostImage < ApplicationRecord
<<<<<<< HEAD
=======

>>>>>>> origin/master
  belongs_to :user
  attachment :image
  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy

<<<<<<< HEAD
=======
  validates :shop_name, presence: true
  validates :image, presence: true

>>>>>>> origin/master
  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
end
