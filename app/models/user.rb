class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  mount_uploader :photo, PhotoUploader

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  before_save do
    self.firstname = firstname.capitalize
    self.lastname = lastname.capitalize
    self.email = email.downcase
    # self.photo = 'avatars/' + rand(1...67).to_s + '.png' if self.photo.blank?
  end

  validates :firstname, presence: true, format: { with: /\A[[:alpha:] \-]+\z/,
	message: "Votre prénom ne peut comporter que des lettres"}
  validates :lastname, presence: true, format: { with: /\A[[:alpha:] \-]+\z/,
  message: "Votre nom ne peut comporter que des lettres"}
  validates_processing_of :photo
  validate :photo_size_validation

  private def photo_size_validation
    errors[:photo] << "Votre avatar ne peut excéder 2Mo" if photo.size > 2.megabytes
  end

  def user?
  	self.status == 'user'
  end

  def admin?
  	self.status == 'admin'
  end
end
