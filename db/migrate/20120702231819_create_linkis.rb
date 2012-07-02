class CreateLinkis < ActiveRecord::Migration
  def change
    create_table :linkis do |t|
      t.string :techniczne
      t.string :adres
      t.text :opis

      t.timestamps
    end
  end
end
