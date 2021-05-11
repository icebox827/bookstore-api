class Book < ApplicationRecord
  validates :title, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 50 }
  validates :author, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 50 }
  validates :category, presence: true, uniqueness: { case_sensitive: true }, length: { maximum: 50 }
end
