class User < ActiveRecord::Base
    has_secure_password
    has_many :roles

    validates_presence_of :password
    validates :username, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
end