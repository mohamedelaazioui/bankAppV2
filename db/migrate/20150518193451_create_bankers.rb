class CreateBankers < ActiveRecord::Migration
  def change
    create_table :bankers do |t|
      t.string :firstName
      t.string :lastName
      t.string :phoneNumber
      t.string :emailAddress
      t.integer :branch_id

      t.timestamps
    end
  end
end
