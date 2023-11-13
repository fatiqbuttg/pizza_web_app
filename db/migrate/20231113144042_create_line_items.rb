class CreateLineItems < ActiveRecord::Migration[7.0]
  def change
    create_table :line_items do |t|
      t.references :item
      t.references :order
      t.references :addon

      t.integer :quantity
      t.timestamps
    end
  end
end
