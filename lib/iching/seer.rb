# frozen_string_literal: true

require_relative 'hexagram_map.rb'
require_relative 'hexagram.rb'

module Iching
  class Seer
    attr_accessor :oracle_type, :hexagram

    def initialize(oracle_type: :coin)
      self.oracle_type = oracle_type
      self.hexagram = Hexagram.new(oracle_type: oracle_type)
    end

    def no_changing_lines?
      (hexagram.lines & [6, 9]).none?
    end

    def display
      puts hexagram.symbol, hexagram.name
      return if no_changing_lines?

      hexagram.change 
      puts
      puts hexagram.symbol, hexagram.name
    end
  end
end
