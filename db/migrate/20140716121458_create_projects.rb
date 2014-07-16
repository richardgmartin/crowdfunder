class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :description
      t.date :start_date
      t.date :end_date
      t.integer :target
      t.integer :hacker_id

      t.timestamps
    end
  end
end
