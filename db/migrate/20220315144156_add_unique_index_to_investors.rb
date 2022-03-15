class AddUniqueIndexToInvestors < ActiveRecord::Migration[7.0]
  def change
    add_index(:investors, :social_security_number, unique: true)
  end
end
