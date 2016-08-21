class Article < ActiveRecord::Base
has_many :comments

mount_uploader :photo, PhotoUploader
validates_processing_of :photo
validate :photo_size_validation

private def photo_size_validation
  errors[:photo] << "Votre avatar ne peut excéder 2Mo" if photo.size > 2.megabytes
end

scope :online, -> { where(status: "En ligne") }
scope :waiting, -> { where(status: "En attente") }

end
