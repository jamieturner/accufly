class Address < ActiveRecord::Base
  belongs_to :user
  attr_accessible :country, :county, :first_line, :postcode, :second_line, :town_city, :user_id
  validates :first_line, :town_city, :county, :postcode, :country, presence: true
end