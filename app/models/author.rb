class Author < ApplicationRecord
  validates :first_name, presence: true, uniqueness: { case_sensitive: true }, length: { maximum: 50 }
  validates :last_name, presence: true, uniqueness: { case_sensitive: true }, length: { maximum: 50 }

  has_many :books
end
