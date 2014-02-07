class AddForeignKeyToPoints < ActiveRecord::Migration
  def change
    add_reference :point_line_items, :user, index: true
  end
end
