class CreatePurchaseHistories < ActiveRecord::Migration
  def change
    create_table :purchase_histories do |t|
      t.date :purchase_data
      t.string :transaction_type
      t.string :person_id
      t.string :product_id

      t.timestamps
    end
  end
end
