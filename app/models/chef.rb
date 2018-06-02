class Chef < ActiveRecord::Base

  before_save { self.email = email.downcase }
  validates :name, presence: true, length: { in: 3..20 }
  validates_presence_of :email, unique_ness: true
  validates_format_of :email, with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
end