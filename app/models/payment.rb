class Payment < ActiveRecord::Base
  attr_accessible :amount, :date

  belongs_to :loan
end
