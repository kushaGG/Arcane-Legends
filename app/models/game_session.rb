class GameSession < ApplicationRecord
	has_one :character
	has_one :location
end
