class AddUserIdToContents < ActiveRecord::Migration
  def change
    add_column :contents, :user_id, :int
  end
end
