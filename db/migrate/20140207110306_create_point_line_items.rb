class CreatePointLineItems < ActiveRecord::Migration
  def change
    create_table :point_line_items do |t|
      t.integer  :points,     null: false
      t.string   :source,     null: false
      t.string   :created_at, null: false
    end
  end
end
