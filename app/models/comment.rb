class Comment < ActiveRecord::Base
  belongs_to :article
  belongs_to :user
  has_many :likes

  def liked_by?(current_user)
  	self.likes.each do |like|
  		if like.user.id == current_user.id
  			return true
  		end
  	end
  	return false
  end

end
