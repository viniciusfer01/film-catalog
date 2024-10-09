class Director < ApplicationRecord
  belongs_to :genre
  has_many :films

  validates :name, presence: true
  validates :nationality, presence: true
  validates :date_of_birth, presence: true
  validates :genre_id, presence: true
end
