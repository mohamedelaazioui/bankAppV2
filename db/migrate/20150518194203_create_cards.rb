class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.date :expiryDate
      t.string :managingCompany
      t.float :saldo
      t.float :limit
      t.integer :client_id
      t.integer :account_id
      t.integer :status_id
      t.integer :type_id

      t.timestamps
    end
  end
end
