# frozen_string_literal: true

require_relative 'iching/seer'

module Iching
  VERSION = '0.4.0'

  class << self
    def new(oracle_type: :coin)
      Seer.new(oracle_type: :coin)
    end
  end
end
