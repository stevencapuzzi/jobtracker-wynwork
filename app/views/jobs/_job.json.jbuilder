json.extract! job, :id, :company, :position, :status, :link, :created_at, :updated_at
json.url job_url(job, format: :json)
