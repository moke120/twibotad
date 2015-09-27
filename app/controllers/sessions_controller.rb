class SessionsController < ApplicationController
	def create
		pp request.env['omniauth.auth']
		account = Account.find_or_create_from_auth_hash(request.env['omniauth.auth'])
		session[:user_id] = account.id
		redirect_to root_path, notice: 'ログインしました'
	end
end
