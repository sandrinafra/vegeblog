class Like < ActiveRecord::Base
  belongs_to :commment
  belongs_to :user
end
