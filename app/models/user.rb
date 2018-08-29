class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one_attached :avatar
  has_many_attached :documents
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: ["User", "Super_admin", "User_admin", "Dress_admin"]
  
end
