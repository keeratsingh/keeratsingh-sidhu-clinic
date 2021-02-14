class Prescription < ApplicationRecord
  belongs_to :patient
  validates :body, presence: true
end
