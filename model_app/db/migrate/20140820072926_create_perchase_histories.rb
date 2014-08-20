class CreatePerchaseHistories < ActiveRecord::Migration
  def change
    create_table :perchase_histories do |t|
      t.date :purchase_data
      t.string :transaction_type

      t.timestamps
    end
  end
end
