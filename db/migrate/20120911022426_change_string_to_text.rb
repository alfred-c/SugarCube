class ChangeStringToText < ActiveRecord::Migration
  def up
    change_column :topics, :name, :text
  end

  def down
  end
end
