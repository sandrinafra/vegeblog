class Article < ActiveRecord::Base

scope :online, -> { where(status: "En ligne") }
scope :waiting, -> { where(status: "En attente") }

end
