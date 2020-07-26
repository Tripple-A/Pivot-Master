module Pivot
  class Item
    # Code here!
    def initialize(details)
      @name = details[:name]
      @assignee = details[:assignee]
      @points = details[:points]
    end

    def name
      @name
    end
  end
end