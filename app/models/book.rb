class Book < ApplicationRecord
  validates :title, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 50 }

  belong_to :author
  has_one :category
end
