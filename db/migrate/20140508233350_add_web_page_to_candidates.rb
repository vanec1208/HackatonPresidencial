class AddWebPageToCandidates < ActiveRecord::Migration
  def change
  	add_column :candidates, :webpage, :string
  end
end
