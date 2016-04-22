class CreateDrinksTags < ActiveRecord::Migration
  def change
    create_table :drinks_tags do |t|
      t.integer :tag_id
      t.integer :drink_id

      t.timestamps null: false
      t.timestamps null: false
    end
  end
end
