class AddAcceptedEstimateIdToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :accepted_estimate_id, :integer
  end
end
