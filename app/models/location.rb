class Location < ApplicationRecord
	belongs_to :game_session

	has_one :bosse
	has_many :enemys
end
