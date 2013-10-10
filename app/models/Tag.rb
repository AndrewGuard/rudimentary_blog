class Tag < ActiveRecord::Base
  validates :title, presence: true

  belongs_to_many :posts, through: :post_categories
end
