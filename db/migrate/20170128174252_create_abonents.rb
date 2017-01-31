class CreateAbonents < ActiveRecord::Migration
  def change
    create_table :abonents do |t|
      t.integer :ticket
      t.string :surname
      t.string :name
      t.string :lastname
      t.string :adress
      t.integer :phone

      t.timestamps
    end
  end
end
