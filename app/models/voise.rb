class Voise < ApplicationRecord
  belongs_to :smoke
  has_many :favolites, dependent: :destroy

  def favolited_by?(smoke)
    favolites.exists?(smoke_id: smoke.id)
  end
end
