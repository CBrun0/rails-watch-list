class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, length: { minimum: 6 }
  # validates :list, uniqueness: { scope: :movie }
  validates :movie_id, uniqueness: { scope: :list_id, message: "is already in the list" }
end
