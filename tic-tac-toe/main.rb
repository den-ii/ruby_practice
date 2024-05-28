# Not DOne
puts "Welcome to tic-tac-toe!"

position = Array.new(9, " ")
available_no = [1, 2, 3, 4, 5, 6, 7, 8, 9]

player1Set = false
player2Set = false

player1Sign
player2Sign

while !player1Set
  puts "Player 1, choose your symbol (X or O):"
  sign = gets.chomp().upcase
  if (sign != "X" && sign != "O")
    puts "Invalid choice. Please choose X or O."
  else
    player1Sign = sign
    player1Set = true
  end
end

player2Sign = player1Sign == "X" ? "O" : "X" 

player1 = Player.new("Player 1", player1Sign)
player2 = Player.new("Player 2", player2Sign)


turn = 0

while turn < 9
  puts "Player 1, choose a position (#{available_no.join(", ")})"
  playerget = gets.chomp()
  


end