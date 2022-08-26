class List < ApplicationRecord
  # dependent destroy When you delete a list, you should delete all associated bookmarks
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks, dependent: :destroy
  has_one_attached :photo
  validates :name, presence: true
  validates :name, uniqueness: true
end
