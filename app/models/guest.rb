class Guest < ActiveRecord::Base
  attr_accessible :ceremony, :email, :evening, :firstname, :meal, :specialfood, :message, :notcoming
end
