class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

     # validation
     # validates :name, presence: true
     after_create :send_welcome_email   
     private    
     def send_welcome_email      
          UserMailer.send_welcome_email(self).deliver    
     end 
end
