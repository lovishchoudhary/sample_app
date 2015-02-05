class Sport < ActiveRecord::Base
	has_many :listings
	has_many :clubs, through: :listings
end
