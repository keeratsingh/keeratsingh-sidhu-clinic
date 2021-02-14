class Patient < ApplicationRecord
    has_many :prescriptions, dependent: :destroy
end
