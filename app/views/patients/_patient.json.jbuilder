json.extract! patient, :id, :first_name, :last_name, :dob, :phone_number, :created_at, :updated_at
json.url patient_url(patient, format: :json)
