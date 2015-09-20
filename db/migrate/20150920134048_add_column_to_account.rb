class AddColumnToAccount < ActiveRecord::Migration
  def change
    add_column :accounts, :name, :text
  end
end
