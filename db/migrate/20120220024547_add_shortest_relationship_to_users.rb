class AddShortestRelationshipToUsers < ActiveRecord::Migration
  def change
    add_column :users, :shortest_relationship, :string

  end
end
