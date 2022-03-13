class Price < ApplicationRecord

  validates :money, presence: true
  validates :count, presence: true
end
