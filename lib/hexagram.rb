# frozen_string_literal: true

require_relative 'oracle'
require_relative 'hexagram_display'
require_relative 'hexagram_map'

class Hexagram
  attr_reader :hex
  attr_accessor :oracle_type

  def initialize(oracle_type: :coin, hex: nil)
    @oracle_type = oracle_type
    @hex = hex.nil? ? generate_hex : hex
  end

  def generate_hex
    oracle = Oracle.new(type: oracle_type) 
    6.times.map{ oracle.line }.reverse
  end

  def hex_symbol
    hex.map{ |n| HexagramDisplay.hexagram_key[n] }.join("\n")
  end

  def hex_name
    hex_binary = hex.map{ |n| HexagramDisplay.bin_hex_key[n] }.join.reverse
    HexagramMap.lookup(hex_binary)
  end

  def transform(line)
    return 7 if line == 6

    return 8 if line == 9

    line
  end

  def change
    hex.map!{ |line| transform(line) }
  end
end
