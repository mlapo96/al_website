json.extract! attachment, :id, :atmt_type, :atmt_name, :attaches_to, :color, :description, :created_at, :updated_at
json.url attachment_url(attachment, format: :json)
