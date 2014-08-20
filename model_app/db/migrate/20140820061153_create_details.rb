class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|
      t.string :name
      t.integer :detailable_id
      t.string :detailable_type
      t.timestamps
    end
  end
end