class AddLongestRelationshipToUsers < ActiveRecord::Migration
  def change
    add_column :users, :longest_relationship, :string

  end
end
