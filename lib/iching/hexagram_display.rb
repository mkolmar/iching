# frozen_string_literal: true

module Iching
  class HexagramDisplay
    def self.bin_hex_key
      { 6 => '0',
        7 => '1',
        8 => '0',
        9 => '1' }
    end

    def self.symbol
      { 6 => '--x--',
        7 => '-----',
        8 => '-- --',
        9 => '--o--' }
    end
  end
end
