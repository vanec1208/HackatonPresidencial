class ChangeColumnName < ActiveRecord::Migration
  def change
  	rename_column :tips, :contenido, :message
  end
end
