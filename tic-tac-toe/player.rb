class Player
  attr_accessor :name,
  attr_reader :sign, :chosen

  def initialize(name, sign)
    @name = name
    @sign = sign
    @chosen = []
  end

  def set_chosen=(num)
    @chosen.push(num)
  end
end


module Checking
  combos = [[1,2,3], [4,5,6], [7,8,9], [1,4,7], [2,5,8], [3,6,9], [1,5,9], [3,5,7]]
  def check(player){
    combos.each do |combo|
      count = 0
      combo.each do |num|
        if player.chosen.include?(num)
          count += 1
        end
      end
      return true if count == 3
    end
    false
  }
end