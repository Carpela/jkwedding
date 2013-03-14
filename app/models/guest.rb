class Guest < ActiveRecord::Base
  attr_accessible :ceremony, :evening, :firstname, :lastname, :meal, :specialfood
end
