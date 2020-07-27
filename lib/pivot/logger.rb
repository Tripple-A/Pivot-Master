require 'logger'

module Pivot
  class Logger < Logger
    def self.last
      ObjectSpace.each_object(self).to_a.last
    end
  end
end
