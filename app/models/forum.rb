class Forum < ActiveRecord::Base
  attr_accessible :name, :description
  has_many :topics, :dependent => :destroy
end
