# frozen_string_literal: true

require_relative 'hexagram_map.rb'
require_relative 'hexagram.rb'

class Iching
  def display
    hex1 = Hexagram.new
    puts hex1.hex_symbol, hex1.hex_name
    return if (hex1.hex & [6, 9]).none?

    hex1.change 
    puts hex1.hex_symbol, hex1.hex_name
  end
end
