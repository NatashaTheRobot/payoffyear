class Loan < ActiveRecord::Base
  attr_accessible :goal_amount, :name

  belongs_to :user
  has_many :payments

  validates :goal_amount, presence: true, numericality: {only_float: true}

  # if name is empty, add "my loan"
end
