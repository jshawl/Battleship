class Player < ActiveRecord::Base
	has_many :games
end

class Game < ActiveRecord::Base
	belongs_to :player
	has_many :turns
end


class Turn < ActiveRecord::Base
	belongs_to :game
	has_one :slot
end



class CreateBattleship < ActiveRecord::Migration

	def initialize
		create_table :players do |column|
			column.string :name
			end

		create_table :games do |column|
			column.belongs_to :player
			column.string :turns
			column.string :hits
			column.string :completeness
			end

		create_table :turns do |column|
			column.string :slot
			column.string :hit
			column.belongs_to :game
	  end
end
 end
