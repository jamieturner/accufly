class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :first_line
      t.string :second_line
      t.string :town_city
      t.string :county
      t.string :postcode
      t.string :country

      t.timestamps
    end
  end
end
