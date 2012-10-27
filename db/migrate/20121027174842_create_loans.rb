class CreateLoans < ActiveRecord::Migration
  def change
    create_table :loans do |t|
      t.string :name
      t.decimal :goal_amount

      t.timestamps
    end
  end
end
