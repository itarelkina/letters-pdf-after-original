class AlterLettersAddUserId < ActiveRecord::Migration[5.2]
  def change
    add_column :letters, :user_id, :integer
    add_index :letters, :user_id
  end
end
