class Applicant < ApplicationRecord
  has_secure_password
  has_many :jobs
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, presence: true, confirmation: true, length: { within: 6..30 }
end
