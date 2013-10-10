class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :body, presence: true

  has_many :tags, through: :post_categories
end
