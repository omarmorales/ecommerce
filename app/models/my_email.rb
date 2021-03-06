class MyEmail < ActiveRecord::Base
	validates_presence_of :email, message: "Woops! Parece que olvidaste colocar el correo"
	validates_uniqueness_of :email, message: "Este correo ya fue registrado"
	validates_format_of :email, with: Devise::email_regexp, message: "No enviaste un correo"
end
