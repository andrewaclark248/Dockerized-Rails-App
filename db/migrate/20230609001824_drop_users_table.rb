class DropUsersTable < ActiveRecord::Migration[6.1]
  def change
      drop_table :user_tables
  end
end
