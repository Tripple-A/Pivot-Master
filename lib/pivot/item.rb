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

    def assignee
      @assignee 
    end

    def points 
      @points
    end

    def +(another_item)
      @points + another_item.points
    end
  end
end