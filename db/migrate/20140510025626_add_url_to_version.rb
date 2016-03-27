class AddUrlToVersion < ActiveRecord::Migration
  def change
  	add_column :versions, :url, :string
  end
end
