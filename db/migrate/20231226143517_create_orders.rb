class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.string :address
      t.decimal :amount, null: false
      t.string :status, default: 'Pending', null: false

      t.timestamps
    end
  end
end
