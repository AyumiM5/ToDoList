class List < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, length: {minimun: 2, maximum: 250}
end
