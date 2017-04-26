class User < ApplicationRecord
	has_secure_password
	def self.sign_in_from_omniauth(auth)
		find_by(provider: auth['provider'], uid: auth['uid']) || create_user_from_omniauth(auth)
	end

	def self.create_user_from_omniauth(auth)
		create(
			uid: auth['uid'],
			provider: auth['provider'],
			avatar: auth['info']['image'],
			name: auth['info']['name'],
			email: auth['info']['email'],
			username: auth['extra']['raw_info']['username']
		)
	end
end