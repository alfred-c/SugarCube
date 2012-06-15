class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.date :date
      t.string :title
      t.text :entry
      t.string :type

      t.timestamps
    end
  end
end
