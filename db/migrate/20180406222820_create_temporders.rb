class CreateTemporders < ActiveRecord::Migration[5.1]
  def change
    create_table :temporders do |t|
      t.integer :user_id
      t.integer :product_id
      t.string :session_id

      t.boolean :ifFinal , :default => 0

      t.timestamps
    end
  end
end
