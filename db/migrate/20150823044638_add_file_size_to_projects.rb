class AddFileSizeToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :file_size, :string
  end
end
