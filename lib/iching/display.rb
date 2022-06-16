# frozen_string_literal: true

require_relative 'hexagram_map.rb'
require_relative 'hexagram.rb'

module Iching
  class Display
    attr_accessor :oracle_type, :hex

    def initialize(oracle_type: :coin)
      self.oracle_type = oracle_type
    end

    def no_changing_lines?
      (hex.hexagram & [6, 9]).none?
    end

    def full(oracle_type: :coin)
      self.hex = Hexagram.new(oracle_type: oracle_type)
      puts hex.hex_symbol, hex.hex_name
      return if no_changing_lines?

      hex.change 
      puts
      puts hex.hex_symbol, hex.hex_name
    end
  end
end
