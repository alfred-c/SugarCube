class Post < ActiveRecord::Base
  attr_accessible :content
  validates :content, :presence => true
  belongs_to :topic
  default_scope :order => 'created_at DESC'
end
