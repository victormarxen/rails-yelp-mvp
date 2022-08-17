class AddRestaurantIdToReview < ActiveRecord::Migration[7.0]
  def change
    add_reference :reviews, :restaurant
    add_foreign_key :reviews, :restaurants
  end
end
