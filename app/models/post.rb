class Post < ActiveRecord::Base
  PER_PAGE = 5

  include AASM

  aasm_initial_state :saved

  aasm_state :saved
  aasm_state :published

  aasm_event :publish do
    transitions :to => :published, :from => :saved
  end

  default_scope :order => ["created_at DESC"]
  belongs_to :author, :class_name => 'User', :foreign_key => "user_id"
  validates_presence_of :title, :body, :author
  has_friendly_id :title, :use_slug => true
  acts_as_taggable_on :tags
end

class String
  def to_html
    RDiscount.new(self).to_html
  end
end
