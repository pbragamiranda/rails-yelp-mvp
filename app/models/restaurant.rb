class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, :address, :category, presence: true
  categories = ['chinese', 'italian', 'japanese', 'french', 'belgian']
  validates :category, inclusion: { in: categories }
end
