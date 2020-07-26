module Pivot
  class Tracker
    
    def self.count(items)
      items.length
    end

    def self.item_for(items, assignee)
      selected_items = items.select{|item| item[:assignee] == assignee}
      selected_items.last
    end

  end
end