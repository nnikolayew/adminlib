class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :surname
      t.string :name
      t.string :lastname
      t.string :birthday

      t.timestamps null: false
    end
  end
end
