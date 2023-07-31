class User < ApplicationRecord
    has_secure_password
    has_many :files, dependent: :destroy
end

