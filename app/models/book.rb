class Book < ApplicationRecord
  has_one_attached :file

  validates :title, presence: true
  validates :genre, presence: true
  validates :text, presence: true
end

