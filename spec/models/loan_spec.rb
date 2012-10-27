require 'spec_helper'

describe Loan do
  it { should belong_to :user }
  it { should have_many :payments}
  it { should validate_presence_of :goal_amount }
end
