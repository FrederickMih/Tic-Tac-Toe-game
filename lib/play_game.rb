class Play 
   def initialize
      @winning_combination = [
         [0, 1, 2],
         [3, 4, 5],
         [6, 7, 8],
         [0, 3, 6],
         [1, 4, 7],
         [2, 5, 8],
         [0, 4, 8],
         [6, 4, 2]
   ]
   
   end  

   def curr_player
      
   end
   
   def  play
    instructions
    user_info
   end

end