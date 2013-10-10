class CreatePostCategories < ActiveRecord::Migration
  def change
  	create_table :post_categories do |t|
  		t.references :post
  		t.references :tag
  	end
  end
end
