class AddApprovedToReviews < ActiveRecord::Migration[7.0]
  def change
    add_column :reviews, :approved, :boolean, default: false
    # Ex:- :default =>''
    Review.all.each do |review|
      review.update_attributes!(approved: false)
    end
  end
end
