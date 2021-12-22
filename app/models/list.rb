class List < ApplicationRecord
  belongs_to :user
  has_many :cards, dependent: :destroy
  validates :title, presence: true, length: {minimun: 2, maximum: 250}
end
