class Topic < ActiveRecord::Base
  attr_accessible :title, :name, :last_poster_id, :last_post_at
  belongs_to :forum
  has_many :posts, :dependent => :destroy
end
