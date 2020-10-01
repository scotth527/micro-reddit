class User < ApplicationRecord
     include ActiveModel::Validations
     include EmailValidator

     validates :username, :email, uniqueness: true,  presence: true
     validates :username, length: { minimum: 4, maximum: 15 }
     validates_with EmailValidator
     has_many :posts
end
