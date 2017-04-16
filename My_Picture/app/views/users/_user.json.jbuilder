json.extract! user, :id, :username, :fullname, :email, :sex, :avatar, :birthday, :address, :password_digest, :created_at, :updated_at
json.url user_url(user, format: :json)
