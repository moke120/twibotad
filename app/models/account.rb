class Account < ActiveRecord::Base
	def self.find_or_create_from_auth_hash(auth_hash)
		provider = auth_hash[:provider]
		uid = auth_hash[:uid]
		nickname = auth_hash[:info][:nickname]
		image_url = auth_hash[:info][:image]
		token = auth_hash[:credentials][:token]
		secret = auth_hash[:credentials][:secret]

		Account.find_or_create_by(provider: provider, uid: uid) do |account|
			account.nickname = nickname
			account.image_url = image_url
			account.token = token
			account.secret = secret
		end
	end
end
