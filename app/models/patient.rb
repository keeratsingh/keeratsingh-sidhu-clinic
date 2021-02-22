class Patient < ApplicationRecord
    has_many :prescriptions, dependent: :destroy
    validates :phone_number, format: { with: /\d{3}-\d{3}-\d{4}/, message: "Please enter the phone number in format (xxx-xxx-xxxx)" }

end
