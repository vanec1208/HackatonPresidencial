class CreateTips < ActiveRecord::Migration
  def change
    create_table :tips do |t|
      t.text :contenido

      t.timestamps
    end
  end
end
