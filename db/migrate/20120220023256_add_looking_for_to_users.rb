class AddLookingForToUsers < ActiveRecord::Migration
  def change
    add_column :users, :looking_for, :string

  end
end
