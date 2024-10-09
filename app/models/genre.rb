class Genre < ApplicationRecord
  has_many :director
  has_many :film

  validates :title, presence: true
end
