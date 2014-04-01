class Post < ActiveRecord::Base
  attr_accessible :body, :title   #this line didn't show up initially in checkpoint 303
  has_many :comments
end
