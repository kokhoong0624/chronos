class CreateDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :code
      t.integer :age
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
