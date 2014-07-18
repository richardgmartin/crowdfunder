class RemoveProjectIdFromFunding < ActiveRecord::Migration
  def change
    remove_column :fundings, :project_id
  end
end
