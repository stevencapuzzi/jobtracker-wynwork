json.extract! applicant, :id, :name, :cohort, :email, :phone, :bio, :linkedin, :github, :created_at, :updated_at
json.url applicant_url(applicant, format: :json)
