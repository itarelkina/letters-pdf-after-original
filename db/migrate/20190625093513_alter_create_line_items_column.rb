class AlterCreateLineItemsColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :line_items, :template, :integer
  end
end
