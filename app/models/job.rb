class Job < ActiveRecord::Base
  has_many :steps
  validates :title, :company, :post_date, :rating, :location, :url, presence: true
end
