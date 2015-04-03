require 'active_record'
require_relative 'player'
require_relative 'turn'
require_relative 'game'
require_relative 'bsdb'
require_relative 'models'
require_relative 'grid'


$ship = [
    [0,0,0,0,0,0,0,0,0,0],
    [0,0,1,0,0,0,0,0,0,0],
    [0,0,1,0,0,0,0,0,0,0],
    [0,0,1,0,0,0,0,0,0,0],
    [0,0,1,0,0,0,0,0,0,0],
    [0,0,1,0,0,0,0,0,0,0],
    [0,0,0,0,0,0,0,0,0,0],
    [0,0,0,0,0,0,0,0,0,0],
    [0,0,0,0,1,1,1,1,1,0],
    [0,0,0,0,0,0,0,0,0,0]
      ]
$grid =	[
  [0,0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0,0]
      ]
class Run

  def initialize
puts"


                       _____|\
                  _.--| MAT |:
                 <____|.----||
                        .---''---,
                         ;..__..'    _...
                       ,'/  ;|/..--''    \
                     ,'_/.-/':            :
                _..-'''/  /  |  \    \   _|/|
               \      /-./_ \;   \    \,;'   \
               ,\    / \:  `:\    \   //    `:`.
             ,'  \  /-._;   | :    : ::    ,.   .
           ,'     ::   /`-._| |    | || ' :  `.`.)
        _,'       |;._:: |  | |    | `|   :    `'
      ,'   `.     /   |`-:_ ; |    |  |  : \
      `--.   )   /|-._:    :          |   \ \
         /  /   :_|   ;`-._;   __..--';    : :
        /  (    ;|;-./_  _/.-:'o |   /     ' |
       /  , \._/_/_./--''/_|:|___|_,'        |
      :  /   `'-'--'----'---------'          |
      | :     O ._O   O_. O ._O   O_.      ; ;
      : `.      //    //    //    //     ,' /
    ~~~`.______//____//____//____//_______,'~
              //    //~   //    //
       ~~   _//   _//   _// ~ _//     ~
     ~     / /   / /   / /   / /  ~      ~~
          ~~~   ~~~   ~~~   ~~~

"


    menu
  end


  def menu

    while true

      puts "are you a new player(yes/no)"
          case gets.chomp.to_s.downcase
            when "yes"
              puts "Add your name please"
              @current_player = Player.create(name: gets.chomp.to_s)

            when "no"
              Player.all.each{|x| p x.name}
              puts "Enter your name please"

              @current_player = Player.find_by(name: gets.chomp.to_s)
              pastgames = Game.find_by(:player_id => @current_player.id)
              p pastgames

            end

puts "-------------------------------------------"
puts " 1. Start a new game"
puts " 2. Load a previous game"
puts " 3. Exit"
puts "-------------------------------------------"
      case gets.chomp.to_i

      when 1
        system "clear"
        @current_game = Game.create(:player_id => @current_player.id) #create a new game class. need to connect turns and game id's somehow
        play
      when 2
				load_game
      when 3
				puts "Goodbye"
				break
      else
				puts "That's not a valid input."
	      end
	    end
	 end

end

Run.new
