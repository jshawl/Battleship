Player
    user will be prompted to enter name

    user will be prompted to load old player profile
Menu
    there will be a menu class that will prompt a menu whenever the program is run.

Starting a game
  when a user runs the controller.rb file the user is prompted with a menu where they are told
  to enter 1 to start a new game
end

Creating an Ocean
   instantiated as soon as a new game is created

end

Creating a battleship

   happens as soon as a new game is created

   each slot is matched with an integer 1-100

   when the game is started a random number is picked.

   that random number is matched with its predetermined slot

   randomly either vertical or horizontal is chosen
        horizontal is accomplished by adding the next four numbers and associated slots
                  are added to the battleship table

        vertical is accomplished by adding slots in four ten unit increments and associated slots
                  added to the battleship table
end


Determining a hit or miss
     when user inputs coordinate it is turned into a string

     string is matched with variable of same name through ennumeration

     when matched , variable is checked against battleship table through ennumeration

              if variable matches any battleship variables a hit(X) is recorded for that slot


              if variable doesn't match any battleship variables a miss(O) is recorded for
                that slot
end

Displaying hit or miss
    once a player inputs a coordinate the previous grid is cleared from the screen

    the value of the chosen slot(the coordinate), is replaced with an X or an O
