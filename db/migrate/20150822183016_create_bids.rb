class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.integer :contracter_id
      t.integer :amount
      t.text :description

      t.timestamps null: false
    end
  end
end
