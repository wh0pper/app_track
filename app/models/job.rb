class Job < ActiveRecord::Base
  validates :title, :company, :post_date, :rating, :location, :url, presence: true
end
