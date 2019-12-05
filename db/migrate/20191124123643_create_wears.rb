class CreateWears < ActiveRecord::Migration[5.2]
  def change
    create_table :wears do |t|
      t.string :name
      t.string :price
      t.string :introduction
      t.integer :type_id
      t.integer :size_id
      t.timestamps
    end
  end
end
