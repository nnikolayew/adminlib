class CreateDeliveries < ActiveRecord::Migration
  def change
    create_table :deliveries do |t|
      t.date :dateissue
      t.date :datereturn

      t.timestamps
    end
  end
end
