class CreateObeses < ActiveRecord::Migration[5.2]
  def change
    create_table :obeses do |t|
      t.float :weight
      t.float :height
      t.float :bmi
      t.float :waist_circumference
      t.belongs_to :patient

      t.timestamps
    end
  end
end
