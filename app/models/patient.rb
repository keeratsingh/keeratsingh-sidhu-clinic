class Patient < ApplicationRecord
    has_many :prescriptions, dependent: :destroy
    validates :phone_number,
     format:
     {
       with: /\d{3}-\d{3}-\d{4}/,
       message: "Please enter the phone number in format (xxx-xxx-xxxx)" 
     }
     validates_uniqueness_of :first_name,
      scope: [:last_name, :dob, :phone_number],
      message: 'A Patient with these details already exists.'
end
