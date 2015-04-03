require 'active_record'
require_relative 'bsdb'
require_relative 'player'
require_relative 'turn'
require_relative 'game'




def print_board

          $grid.each_with_index do |y, index|

            print index.to_s + "||"

            y.each do |x|

              if x == 0
                print "   "
              elsif x==1
                print " X "
              else
                print " O "
              end

              print "|"

            end
            puts " "
          end
end

def new_turn

          puts "Please y axis coordinate"
          y_coor = gets().chomp().to_i
          puts "Enter x axis coordinate"
          x_coor = gets().chomp().to_i

          @new_turn = Turn.create
          @new_turn.update(:game_id => @current_game.id)
          system "clear"
          case $ship[y_coor][x_coor]

          when 1
            $grid[y_coor][x_coor] = 1
            hits = @current_game.hits
            @current_game.update(:hits => hits.to_i+1)
            @new_turn.update(yaxis: y_coor, xaxis: x_coor, hit: true)

            case hits   #this didnt work as an if else statement..?
            when 10
              puts "************************"
              puts "************************"
              puts "************************"

              puts "Congratualtions you win!"

              puts "************************"
              puts "************************"
              puts "************************"
              @current_game.update(:completeness => true)
               menu
            end
            puts "-------------------------------------------"
            puts "A hit!"
            puts "-------------------------------------------"

          when 0
            $grid[y_coor][x_coor] = 2
            @new_turn.update(yaxis: y_coor, xaxis: x_coor, hit: false)
            puts "-------------------------------------------"
            puts "Miss"
            puts "-------------------------------------------"
          end


end


def play
      turncounter = 0
      while turncounter<= 20
        puts "-------------------------------------------"
        puts "  | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 |   X-axis"
        print_board
        puts "-------------------------------------------"
        new_turn

        turncounter +=1
      end
      puts "************************"
      puts "************************"
      puts "************************"

      puts "TOO MANY TURNS! YOU LOSE"

      puts "************************"
      puts "************************"
      puts "************************"
      menu
end




def load_game

  # pastgames = Game.find_by(:player_id => @current_player.id)
  puts "id | hits | complete?"
  Game.all.each{|x|
    puts "#{x.id}  | #{x.hits}   | #{x.completeness}" }
  puts "please choose a game by game id"
  idinput =gets().chomp()
  @current_game = Game.find_by(:id => idinput)
  all_turns = Turn.where(:game_id =>idinput, )

    all_turns.each {|y|
        case y.hit
        when true
         $grid[y.yaxis][y.xaxis] = 1
       when false
         $grid[y.yaxis][y.xaxis] = 2
       end
              }
    play

end
# def create_battleship
#   number = rand(100)#overlap may be an issue.
#
#   horbad_slot = [6,7,8,9,10,16,17,18,19,20,26,27,28,29,30,36,37,38,39,40,46,47,48,49,50,56,57,58,59,60,66,67,68,69,70,76,77,78,79,80,86,87,88,89,90,96,97,98,99]
#
#   if number <= 60
#     battleship1 << "#{number},#{number+10},#{number+20},#{number+30},#{number+40}"
#   elsif number == horbad_slot.each{|x|}
#     battleship1 << "12,13,14,15,16"
#   else
#     battleship1 << "#{number}, #{number+1}, #{number+2}, #{number+3}, #{number+4}"
#   end
#
#   number2 = rand(100)
#   if number2 <= 60
#     battleship2 << "#{number},#{number+10},#{number+20},#{number+30},#{number+40}"
#   elsif number2 == horbad_slot.each{|x|}
#     battleship2 << "12,13,14,15,16"
#   else
#     battleship2 << "#{number}, #{number+1}, #{number+2}, #{number+3}, #{number+4}"
#   end
