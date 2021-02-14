json.extract! prescription, :id, :name, :note, :patient_id, :created_at, :updated_at
json.url prescription_url(prescription, format: :json)
