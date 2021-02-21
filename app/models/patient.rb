class Patient < ApplicationRecord
    has_many :prescriptions, dependent: :destroy
    validates :phone_number, :numericality => true, :length => { is: 10 }
end
