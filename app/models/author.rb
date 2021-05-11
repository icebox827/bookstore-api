class Author < ApplicationRecord
  validates :title, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 50 }

  has_many :books
end
