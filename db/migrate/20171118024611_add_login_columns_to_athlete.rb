class AddLoginColumnsToAthlete < ActiveRecord::Migration[5.1]
  def change
    add_column :athletes, :email, :string, null: false
    add_column :athletes, :password_digest, :string, null: false
    add_column :athletes, :token, :string, null:false
  end
end
