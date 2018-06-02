class Recipe < ActiveRecord::Base

  validates :name, presence: true, length: { in: 2..20 }
  validates :summary, presence: true, length: { in: 10..50 }
  validates :description, presence: true, length: {in: 10..1000 }
end