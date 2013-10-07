# -*- encoding : utf-8 -*-
class User < ActiveRecord::Base
  acts_as_authentic do |c|
		# c.validate_login_field = false
		c.validate_email_field = false
		# c.validate_password_field = false
	end
	attr_accessible :firstname, :lastname, :username, :email, :password, :password_confirmation
end
