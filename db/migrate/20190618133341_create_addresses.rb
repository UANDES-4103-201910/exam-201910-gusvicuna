class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :phone
      t.string :line1
      t.string :line2
      t.string :city
      t.string :country
      t.integer :zip_code
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
