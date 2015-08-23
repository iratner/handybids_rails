class AddProjectIdToEstimates < ActiveRecord::Migration
  def change
    add_column :estimates, :project_id, :integer
  end
end
