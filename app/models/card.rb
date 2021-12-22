class Card < ApplicationRecord
  belongs_to :list
  validates :title, presence: true, length: {minimun: 2, maximum: 250}
  validates :memo, presence: true, length: {minimun: 2, maximum: 250}
end
