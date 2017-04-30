json.extract! user, :id, :username, :fullname, :email, :gender, :avatar, :birthday, :address, :password, :created_at, :updated_at
json.url user_url(user, format: :json)
