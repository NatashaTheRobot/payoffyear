class AddReferencesToLoansPayments < ActiveRecord::Migration
  def change
    add_column :loans, :user_id, :integer
    add_column :payments, :loan_id, :integer
  end
end
