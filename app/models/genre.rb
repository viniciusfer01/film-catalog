class Genre < ApplicationRecord
  has_many :directors
  has_many :films

  validates :title, presence: true
end
