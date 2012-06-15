# == Schema Information
#
# Table name: users
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class User < ActiveRecord::Base
  has_many :authentications
  
  has_many :friendships
  has_many :friends, :through => :friendships
  
  has_many :contents
  
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :name, :presence => true,
                   :length => { :maximum => 50 }
  validates :email, :presence => true,
                    :format => { :with => email_regex },
                    :uniqueness => { :case_sensitive => false }
  # validates :password, :presence => true,
  #                   :confirmation => true,
  #                   :length => { :within => 0..40 }
  #validates :country, inclusion: { in: COUNTRY_NUMS }
  
  # before_save :encrypt_password
  
  class << self
    def authenticate(email, submitted_password)
      user = find_by_email(email)
      user1 = find_by_password(submitted_password)
      (user == user1) ? user : nil
    end

    def authenticate_with_salt(id, cookie_salt)
      user = find_by_id(id)
      (user && user.salt == cookie_salt) ? user : nil
    end
  end
  
  
  def self.create_with_omniauth(auth)  
    create! do |user|
      @firstName = auth["info"]["first_name"]
      @lastName = auth["info"]["last_name"]
      user.name = "#{@firstName} #{@lastName}"
      user.email = auth["info"]["email"]
      user.fb_uid = auth["uid"]
      user.fb_tokenfields = auth["credentials"]["token"]
    end
  end
  
  private
  
    def encrypt(string)
      secure_hash("#{salt}--#{string}")
    end
    
    def make_salt
      secure_hash("#{Time.now.utc}--#{password}")
    end
    
    def secure_hash(string)
      Digest::SHA2.hexdigest(string)
    end
end
