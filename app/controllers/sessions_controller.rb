class SessionsController < ApplicationController
	def create
		account = Account.find_or_create_from_auth_hash(request.env['omniauth.auth'])
		session[:user_id] = account.id
		redirect_to root_path, notice: 'ログインしました'
	end

	def destroy
		reset_session
		redirect_to root_path
	end
end
