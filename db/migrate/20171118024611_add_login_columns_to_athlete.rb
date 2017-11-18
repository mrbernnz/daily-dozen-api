class AddLoginColumnsToAthlete < ActiveRecord::Migration[5.1]
  def change
    add_column :athletes, :email, :string
    add_column :athletes, :password_digest, :string
    add_column :athletes, :token, :string
  end
end
