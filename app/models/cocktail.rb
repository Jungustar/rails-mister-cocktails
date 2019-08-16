class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_many :reviews

  mount_uploader :photo, PhotoUploader

  validates :name, uniqueness: true
  validates :name, presence: true
end
