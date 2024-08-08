class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, presence: true, length: { minimum: 6 }
  validates :movie_id, presence: true, uniqueness: { scope: :list_id, message: 'This movie is already on this list' }
  validates :list_id, presence: true
end
