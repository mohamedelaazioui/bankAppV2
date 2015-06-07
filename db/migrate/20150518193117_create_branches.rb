class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
      t.string :name
      t.string :street
      t.string :streetNr
      t.string :zipCode
      t.string :city

      t.timestamps
    end
  end
end
