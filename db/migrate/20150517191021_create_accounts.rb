class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.date :beginDate
      t.date :expiryDate
      t.float :saldo
      t.float :rate
      t.integer :client_id
      t.integer :status_id
      t.integer :category_id

      t.timestamps
    end
  end
end
