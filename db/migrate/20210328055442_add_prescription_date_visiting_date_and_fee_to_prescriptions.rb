class AddPrescriptionDateVisitingDateAndFeeToPrescriptions < ActiveRecord::Migration[6.1]
  def change
    add_column :prescriptions, :prescription_date, :date
    add_column :prescriptions, :visting_date, :date
    add_column :prescriptions, :fee, :decimal, precision: 20, scale: 2, default: 0.00, null: false
  end
end
