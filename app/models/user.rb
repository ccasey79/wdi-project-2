class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :validatable
  
  mount_uploader :profile_picture, ProfilePictureUploader
 
  has_many :recipes
  has_many :comments

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def profile_image
    self.profile_picture.nil? ? "http://fillmurray.com/200/300" : self.profile_picture.url
  end
  
end







