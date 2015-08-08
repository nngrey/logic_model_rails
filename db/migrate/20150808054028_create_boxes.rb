class CreateBoxes < ActiveRecord::Migration
  def change
    create_table :boxes do |t|
      t.string :name
      t.integer :previous_box
      t.integer :next_box

      t.timestamps null: false
    end
  end
end
