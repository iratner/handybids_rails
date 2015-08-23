class ChangeContracterIdToContractorId < ActiveRecord::Migration
  def change
    rename_column :estimates, :contracter_id, :contractor_id
  end
end
