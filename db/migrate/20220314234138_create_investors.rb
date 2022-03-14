class CreateInvestors < ActiveRecord::Migration[7.0]
  def change
    create_table :investors do |t|
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.string :phone_number
      t.string :address_street
      t.string :address_city
      t.string :address_state
      t.string :address_zipcode
      t.string :social_security_number

      t.timestamps
    end
  end
end
