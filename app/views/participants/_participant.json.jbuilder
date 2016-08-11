json.extract! participant, :id, :email, :name_first, :name_last, :phone, :team_id, :created_at, :updated_at
json.url participant_url(participant, format: :json)