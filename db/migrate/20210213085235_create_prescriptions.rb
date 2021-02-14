class CreatePrescriptions < ActiveRecord::Migration[6.1]
  def change
    create_table :prescriptions do |t|
      t.string :name
      t.text :note
      t.references :patient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
