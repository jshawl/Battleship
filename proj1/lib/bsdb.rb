require "active_record"
# require "pry"


ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host	=> "localhost",
  :database => "battleship_db"
)

def swipe
  ActiveRecord::Base.connection.tables.each do |table|
    ActiveRecord::Base.connection.drop_table(table)
  end
end




class CreateBattleship < ActiveRecord::Migration

	def initialize
		create_table :players do |column|
			column.string :name
			end

		create_table :games do |column|
			column.belongs_to :player
			column.integer :turns
			column.integer :hits
			column.boolean :completeness
			end

		create_table :turns do |column|
			column.belongs_to :game
      column.integer :yaxis
			column.integer :xaxis
			column.boolean :hit
	  end
end
end
# binding.pry
