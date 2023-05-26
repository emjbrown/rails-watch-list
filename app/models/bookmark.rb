class Bookmark < ApplicationRecord
  belongs_to :movie, dependent: :destroy
  belongs_to :list
  has_one_attached :photo

  validates_associated :movie, :list
  validates :movie_id, uniqueness: { scope: :list_id }
  validates :comment, length: { minimum: 6 }
end
