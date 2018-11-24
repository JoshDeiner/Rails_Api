class User < ApplicationRecord
  has_secure_password
  validates_uniqueness_of :username
  has_secure_token :auth_token
  has_many :old_stuffs



  def invalidate_token
    self.update_column(auth_token: nil)
  end

  def self.validate_login(username, password)
    user = find_by(username: username)
    if user && user.authenticate(password)
      user
    end
  end


end
