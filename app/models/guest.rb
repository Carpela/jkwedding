class Guest < ActiveRecord::Base
  attr_accessible :ceremony, :email, :evening, :firstname, :lastname, :meal, :specialfood
end
