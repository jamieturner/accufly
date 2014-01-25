class Address < ActiveRecord::Base
  belongs_to :user
  attr_accessible :country, :county, :first_line, :postcode, :second_line, :town_city, :user_id
  #validates :country, :user_id, :county, :first_line, :postcode, :town_city, presence: true
end