class AlterRecordsAddTemplateColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :records, :template, :integer
  end
end
