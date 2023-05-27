class Bookmark < ApplicationRecord
  # When deleting bookmark, ensure all associated movies are deleted from bookmark
  belongs_to :movie
  belongs_to :list

  validates_associated :movie, :list
  validates :movie_id, uniqueness: { scope: :list_id }
  validates :comment, length: { minimum: 6 }
end
