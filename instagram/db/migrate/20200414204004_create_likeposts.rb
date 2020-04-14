class CreateLikeposts < ActiveRecord::Migration[6.0]
  def change
    create_table :likeposts do |t|
      t.references :user
      t.references :post
    end
  end
end
