class Applicant < ApplicationRecord
  has_secure_password
  has_many :jobs
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, confirmation: true
end
