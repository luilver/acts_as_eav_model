class Post < ActiveRecord::Base
  has_eav_behavior
  has_many :comments
  
  validates :intro, :presence=>true, :on=>:create

  serialize :creator
end
