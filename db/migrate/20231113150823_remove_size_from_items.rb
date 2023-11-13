class RemoveSizeFromItems < ActiveRecord::Migration[7.0]
  def change
    remove_column :items, :size, :string
  end
end
