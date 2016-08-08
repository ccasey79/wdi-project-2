class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :validatable
  
  mount_uploader :profile_picture, ProfilePictureUploader
 
  has_many :recipes
  has_many :comments
  
end







