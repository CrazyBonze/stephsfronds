class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :filename, null: false
      t.string :name, null: false
      t.boolean :showcase, default: false
      t.column :image_type, :integer, default: 0, null: false

      t.timestamps null: false
    end
  end
end
