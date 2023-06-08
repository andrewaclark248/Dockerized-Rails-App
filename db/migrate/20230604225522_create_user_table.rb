class CreateUserTable < ActiveRecord::Migration[6.1]
  def change
    create_table :user_tables do |t|
      t.string :username  
      t.string :email
      t.string :first_name
      t.string :last_name
      t.timestamps
    end
  end
end
