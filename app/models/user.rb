class User < ApplicationRecord
  has_secure_password
  has_many items
  has_many bids
  
  def to_s
    username
  end
end
