class AddUserIdToInvestors < ActiveRecord::Migration[7.0]
  def change
    add_reference :investors, :user
  end
end
