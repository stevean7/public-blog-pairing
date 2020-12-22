class AddPostIdToRatings < ActiveRecord::Migration[5.2]
  def change
    add_column :ratings, :post_id, :integer
  end
end
