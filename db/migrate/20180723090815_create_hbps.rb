class CreateHbps < ActiveRecord::Migration[5.2]
  def change
    create_table :hbps do |t|
      t.float :systolic
      t.float :diastolic
      t.belongs_to :patient, foreign_key: true

      t.timestamps
    end
  end
end
