class Tag < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to_many :posts, through: :post_categories
end
