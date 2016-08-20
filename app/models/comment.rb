class Comment < ActiveRecord::Base
  belongs_to :article
  belongs_to :user
  has_many :likes
end
