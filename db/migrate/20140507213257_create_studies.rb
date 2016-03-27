class CreateStudies < ActiveRecord::Migration
  def change
    create_table :studies do |t|
      t.string :university
      t.string :study
      t.integer :candidate_id

      t.timestamps
    end
  end
end
