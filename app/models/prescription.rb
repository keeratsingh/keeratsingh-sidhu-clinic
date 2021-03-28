class Prescription < ApplicationRecord
  belongs_to :patient
  validates :patient, presence: true
  validates :fee, :numericality => { :greater_than_or_equal_to => 0, message: "Fee should be a number that is 0 or more than 0"  }
end
