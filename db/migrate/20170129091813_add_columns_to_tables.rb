class AddColumnsToTables < ActiveRecord::Migration
  #добавляем недостающие столбцы для таблицы employees
  def change
    add_column :employees, :startwork, :date
    add_column :employees, :position, :string
    add_column :employees, :education, :string
  end
end
