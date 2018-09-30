json.extract! skills_users, :id, :skill_id, :user_id, :created_at, :updated_at
json.url skills_users_url(skills_users, format: :json)
