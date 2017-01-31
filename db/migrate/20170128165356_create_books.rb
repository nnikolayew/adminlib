class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :autor
      t.string :shifr
      t.string :publishe
      t.integer :year
      t.integer :price
      t.date :date

      t.timestamps
    end
  end
end
