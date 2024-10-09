class Genre < ApplicationRecord
  has_many :directors

  validates :title, presence: true
end
