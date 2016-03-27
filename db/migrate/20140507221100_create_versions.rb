class CreateVersions < ActiveRecord::Migration
  def change
    create_table :versions do |t|
      t.integer :candidates
      t.integer :questions
      t.integer :tips

      t.timestamps
    end
  end
end
