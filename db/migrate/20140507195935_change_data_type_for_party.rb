class ChangeDataTypeForParty < ActiveRecord::Migration
  def change
  	change_column :candidates, :party,  :text
  end
end
