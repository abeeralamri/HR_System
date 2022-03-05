class User < ApplicationRecord
     # validation
     validates :email, presence: true, format: {with:/[a-z]+@.+\.\S+\z/}, uniqueness: true
     validates :name, presence: true
     validates :password , presence: true, format: { with:/^(?=.*[a-zA-Z])(?=.*[0-9]).{6,}$/ , multiline: true}
end
