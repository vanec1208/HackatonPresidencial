class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :start
      t.string :end
      t.string :timezone
      t.integer :candidate_id

      t.timestamps
    end
  end
end
