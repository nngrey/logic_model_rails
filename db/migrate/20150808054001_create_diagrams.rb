class CreateDiagrams < ActiveRecord::Migration
  def change
    create_table :diagrams do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
