class AddUserIdToTickets < ActiveRecord::Migration
  def change
    add_reference :tickets, :user, index: true, foreign_key: true
  end
end
