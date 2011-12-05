class User < ActiveRecord::Base
  has_many :posts
  validates_presence_of :name
  devise :database_authenticatable, :recoverable, :rememberable, :trackable
end
