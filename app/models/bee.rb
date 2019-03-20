class Bee < ApplicationRecord 
  belongs_to :hive
  has_many :flights
end
