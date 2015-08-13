class AddDiagramRefToBoxes < ActiveRecord::Migration
  def change
    add_reference :boxes, :diagram, index: true, foreign_key: true
  end
end
