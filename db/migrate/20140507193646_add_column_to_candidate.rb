class AddColumnToCandidate < ActiveRecord::Migration
  def change
  	add_column :candidates, :timeline, :string
  	add_column :candidates, :twitter, :string
  	add_column :candidates, :age, :string
  	add_column :candidates, :party, :string
  end
end
