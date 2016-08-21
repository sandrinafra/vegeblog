class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :comments
  has_many :likes

  before_save do
    self.firstname = firstname.capitalize
    self.lastname = lastname.capitalize
    self.email = email.downcase
    self.photo = 'avatars/' + rand(1...67).to_s + '.png' if self.photo.blank?
  end

    def user?
    	self.status == 'user'
    end
    
    def admin?
    	self.status == 'admin'
    end
end

