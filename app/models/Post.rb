class Post < ActiveRecord::Base
  # Remember to create a migration!
  has_many :tags, through: :post_categories
end
