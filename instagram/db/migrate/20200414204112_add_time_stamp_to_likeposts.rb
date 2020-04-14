class AddTimeStampToLikeposts < ActiveRecord::Migration[6.0]
  def change
    add_column :likeposts, :created_at, :datetime
    add_column :likeposts, :updated_at, :datetime
  end
end
