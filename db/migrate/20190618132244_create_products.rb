class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :brand
      t.string :model
      t.string :variant
      t.integer :price
      t.string :s_description
      t.string :l_description
      t.string :type_p

      t.timestamps
    end
  end
end
