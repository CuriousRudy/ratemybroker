class CreateBrokers < ActiveRecord::Migration[5.1]
  def change
    create_table :brokers do |t|
      t.string :first_name
      t.string :last_name
      t.integer :brokerage_id

      t.timestamps
    end
  end
end
