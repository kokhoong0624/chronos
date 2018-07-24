class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :ic 
      t.float :height
      t.float :weight
      t.integer :age
      t.date :birthday
      t.belongs_to :obesity, optional: true
      t.belongs_to :high_blood_pressure,optional: true
      t.belongs_to :diabetes, optional: true
      t.belongs_to :doctor

      t.timestamps
    end
  end
end
