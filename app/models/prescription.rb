class Prescription < ApplicationRecord
  belongs_to :patient
  validates :patient, presence: true
end
