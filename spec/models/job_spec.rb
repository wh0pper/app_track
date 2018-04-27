require 'rails_helper'

describe Job do
  it { should belong_to :user }
  it { should validate_presence_of :title }
  it { should validate_presence_of :company }
  it { should validate_presence_of :post_date }
  it { should validate_presence_of :rating }
  it { should validate_presence_of :location }
  it { should validate_presence_of :url }
  it { should have_many :steps }
  it { should validate_numericality_of :rating }
end
