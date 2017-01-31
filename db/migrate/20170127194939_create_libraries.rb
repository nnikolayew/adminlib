class CreateLibraries < ActiveRecord::Migration
  def change
    create_table :libraries do |t|
      t.string :number
      t.string :name
      t.string :adress

      t.timestamps
    end
  end
end
