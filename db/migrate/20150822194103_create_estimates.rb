class CreateEstimates < ActiveRecord::Migration
  def change
    create_table :estimates do |t|
      t.integer :contracter_id
      t.text :range
      t.text :description

      t.timestamps null: false
    end
  end
end
