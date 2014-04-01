class Comment < ActiveRecord::Base
  belongs_to :post
  attr_accessible :body  #this line didn't show up initially in checkpoint 303
end
