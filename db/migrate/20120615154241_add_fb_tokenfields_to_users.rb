class AddFbTokenfieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :fb_tokenfields, :string

  end
end
