class CreateDresses < ActiveRecord::Migration[5.2]
  def change
    create_table :dresses do |t|
      t.string :name
      t.string :code
      t.string :remarks
      t.string :colors
      t.float :price
      t.integer :stock
      t.float :ms_length
      t.float :ms_bust
      t.float :ms_waist
      t.float :ms_hip

      t.timestamps
    end
  end
end
