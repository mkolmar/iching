# frozen_string_literal: true

require_relative 'oracle'
require_relative 'hexagram_display'
require_relative 'hexagram_map'

module Iching
  class Hexagram
    attr_accessor :oracle_type, :lines

    def initialize(oracle_type: :coin, lines: nil)
      self.oracle_type = oracle_type
      self.lines = lines.nil? ? generate : lines
    end

    def generate
      oracle = Oracle.new(type: oracle_type) 
      6.times.map{ oracle.line }.reverse
    end

    def symbol
      lines.map{ |n| HexagramDisplay.symbol[n] }.join("\n")
    end

    def binary
      lines.map{ |n| HexagramDisplay.bin_hex_key[n] }.join.reverse
    end

    def name
      HexagramMap.lookup(binary)
    end

    def transform(line)
      return 7 if line == 6

      return 8 if line == 9

      line
    end

    def change
      lines.map!{ |line| transform(line) }
    end
  end
end
