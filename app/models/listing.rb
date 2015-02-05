class Listing < ActiveRecord::Base
	belongs_to :club
	belongs_to :sport
	has_many :slots
end
