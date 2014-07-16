class CreateRewards < ActiveRecord::Migration
  def change
    create_table :rewards do |t|
      t.integer :breakpoint
      t.integer :project_id
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
