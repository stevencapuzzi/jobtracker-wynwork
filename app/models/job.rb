class Job < ApplicationRecord
  has_many :followups, dependent: :destroy
  belongs_to :applicant
end
