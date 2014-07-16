class CreateFundings < ActiveRecord::Migration
  def change
    create_table :fundings do |t|
      t.integer :amount
      t.integer :backer_id
      t.integer :project_id
      t.integer :reward_id

      t.timestamps
    end
  end
end
