class Article < ActiveRecord::Base

has_many :comments, dependent: :destroy

mount_uploader :image, ImageUploader

before_save do
  self.title = self.title.split.map(&:capitalize).join(' ')
end

validates :title, presence: true
validates :text, presence: true
validates :content, presence: true
validates :image, presence: true

validates_processing_of :image
validate :image_size_validation
private def image_size_validation
  errors[:image] << "Votre avatar ne peut excéder 2Mo" if image.size > 2.megabytes
end


scope :online, -> { where(status: "En ligne") }
scope :waiting, -> { where(status: "En attente") }

end
