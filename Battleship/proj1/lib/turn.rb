class Turn < ActiveRecord::Base
	belongs_to :game
	has_one :slot
end
