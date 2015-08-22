class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.string :video
      t.string :status
      t.string :category
      t.string :urgency

      t.timestamps null: false
    end
  end
end
