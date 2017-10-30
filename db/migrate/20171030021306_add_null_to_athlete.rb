class AddNullToAthlete < ActiveRecord::Migration[5.1]
  def change
    change_column :athletes, :first_name, :string, null: false
    change_column :athletes, :last_name, :string, null: false
  end
end
