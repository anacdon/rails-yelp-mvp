class ChangeReviews < ActiveRecord::Migration[6.0]
  def change
    remove_column :reviews, :restaurant_id
    add_reference :reviews, :restaurant, foreign_key: true
  end
end
