class TicTacToe
  
  def initialize
    @board = Array.new(9," ")
  end
  
  WIN_COMBINATIONS = [
    [0,1,2], [0,3,6], 
    [0,4,8], [1,4,7], 
    [2,5,8], [2,4,6],
    [3,4,5], [6,7,8],
    ]
    
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  
  def input_to_index(input)
    input.to_i - 1
  end
  
  def move(index, token = "X")
    @board[index] = token
  end
  
  def position_taken?(index)
    !(@board[index].nil? || @board[index] == " ")
  end
  
  def valid_move?(index)
    index.between?(0, 8) && !position_taken?(index)
  end
  
  def turn_count
    turn = 0 
    @board.each do |index| 
<<<<<<< HEAD
      if index == "X" || index == "O"
        turn += 1 
      end
    end
    return turn
  end
  
  def current_player
    if turn_count.even?
      player = "X"
    else
      player = "O"
    end
  end
  
  
  def turn 
    puts "Your turn! Pick your square; 1-9!"
    user_input = gets.chomp
    index_value = input_to_index(user_input)
    if valid_move?(index_value)
      player_token = current_player
      move(index_value, player_token)
      display_board
    else
      turn
    end
  end
  
  def won?
    WIN_COMBINATIONS.each {|win_combo|
     index_0 = win_combo[0]
     index_1 = win_combo[1]
     index_2 = win_combo[2]

     position_1 = @board[index_0]
     position_2 = @board[index_1]
     position_3 = @board[index_2]

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combo
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return win_combo
    end
    }
    return false
  end
  
  def full?
    @board.all? {|index| "X" == index || "O" == index}
  end 
  
  def draw?
    if !won? && full?
      true
    else
      false
    end
  end
  
  def over?
    if won? || draw?
      true 
    else
      false 
    end
  end
  
  def winner
    index = []
    index = won?
    if index == false
      nil
    elsif @board[index[0]] == "X"
      "X"
    else @board[index[0]] == "O"
      "O"
    end
  end
  
  def play
    until over?
      turn
    end
    
    if won?
      puts "Congratulations #{winner}!"
    elsif draw?
      puts "Cat's Game!"
=======
      if index == "X" || "O"
        turn += 1 
      end
    turn
>>>>>>> d9d97e2ebc0dfdb72bb8df8357edbaf08048e57c
    end
  end
end