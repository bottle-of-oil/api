class User < ApplicationRecord
    validates :username, uniqueness: true
    validates :password_digest, presence: true
end
