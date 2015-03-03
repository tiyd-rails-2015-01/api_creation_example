class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :calories
      t.string :course

      t.timestamps null: false
    end
  end
end
