class User < ActiveRecord::Base
  has_many :posts
  validates_presence_of :name
  devise :recoverable, :rememberable, :trackable
  Themis::Config['ldap'] ? devise(:ldap_authenticatable) : devise(:database_authenticatable)
end
