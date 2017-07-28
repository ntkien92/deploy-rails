class UserMailer < ApplicationMailer
	def welcome_email(user)
    mail(to: 'viet.nguyen@asiantech.vn', subject: 'Xin chao Kien')
  end
end
