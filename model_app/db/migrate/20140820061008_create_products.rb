class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :cost
      
      t.timestamps
    end
  end
end
