class List < ApplicationRecord
  belongs_to :user
  validates :title, length: {minimun: 2, maximum: 250}
end
