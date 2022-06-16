# frozen_string_literal: true

require_relative 'iching/display.rb'

module Iching
  VERSION = '0.4.0'

  class << self
    def new(oracle_type: :coin)
      Display.new(oracle_type: :coin)
    end
  end
end
