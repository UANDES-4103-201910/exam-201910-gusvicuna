class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.references :b_address
      t.references :s_address

      t.timestamps
    end
  end
end
