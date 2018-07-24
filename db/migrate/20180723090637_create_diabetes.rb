class CreateDiabetes < ActiveRecord::Migration[5.2]
  def change
    create_table :diabetes do |t|
      t.float :before
      t.float :after
      t.float :fasting
      t.float :hba1c
      t.belongs_to :patient_id

      t.timestamps
    end
  end
end
