require 'rails_helper'

describe Step do
  it { should validate_presence_of :description}
  it { should validate_presence_of :due_date }
  it { should validate_presence_of :priority }
  it { should belong_to :job }
end
