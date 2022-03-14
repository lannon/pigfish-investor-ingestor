class User < ApplicationRecord
  include Clearance::User

  has_many :investors, inverse_of: 'user'
end
