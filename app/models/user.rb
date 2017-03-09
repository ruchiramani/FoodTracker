class User < ActiveRecord::Base
 has_many :days
 has_many :recipes
 has_secure_password


end
