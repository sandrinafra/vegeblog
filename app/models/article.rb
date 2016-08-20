class Article < ActiveRecord::Base
has_many :comments

scope :online, -> { where(status: "En ligne") }
scope :waiting, -> { where(status: "En attente") }

end
