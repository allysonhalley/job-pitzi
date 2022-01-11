class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true
      t.string :device, null: false
      t.string :imei, null: false
      t.decimal :year_mount, null: false
      t.integer :installments

      t.timestamps
    end
  end
end
