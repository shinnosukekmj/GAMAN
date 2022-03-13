class Voice < ApplicationRecord
  belongs_to :drink
  has_many :favorites, dependent: :destroy

  validates :story, presence: true

  def favorited_by?(drink)
    favorites.exists?(drink_id: drink.id)
  end
end
